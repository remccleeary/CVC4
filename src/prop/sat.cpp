#include "cnf_stream.h"
#include "prop_engine.h"
#include "sat.h"
#include "context/context.h"
#include "theory/theory_engine.h"

namespace CVC4 {
namespace prop {

void SatSolver::theoryCheck(SatClause& conflict) {
  // Try theory propagation
  if (!d_theoryEngine->check(theory::Theory::FULL_EFFORT)) {
    // We have a conflict, get it
    Node conflictNode = d_theoryEngine->getConflict();
    Debug("prop") << "SatSolver::theoryCheck() => conflict: " << conflictNode << std::endl;
    // Go through the literals and construct the conflict clause
    Node::const_iterator literal_it = conflictNode.begin();
    Node::const_iterator literal_end = conflictNode.end();
    while (literal_it != literal_end) {
      // Get the literal corresponding to the node
      SatLiteral l = d_cnfStream->getLiteral(*literal_it);
      // Add the negation to the conflict clause and continue
      conflict.push(~l);
      literal_it ++;
    }
  }
}

void SatSolver::enqueueTheoryLiteral(const SatLiteral& l) {
  Node literalNode = d_cnfStream->getNode(l);
  // We can get null from the prop engine if the literal is useless (i.e.)
  // the expression is not in context anyomore
  if(!literalNode.isNull()) {
    d_theoryEngine->assertFact(literalNode);
  }
}

void SatSolver::setCnfStream(CnfStream* cnfStream) {
  d_cnfStream = cnfStream;
}

}/* CVC4::prop namespace */
}/* CVC4 namespace */