/*********************                                                        */
/*! \file result.h
 ** \verbatim
 ** Original author: mdeters
 ** Major contributors: none
 ** Minor contributors (to current version): none
 ** This file is part of the CVC4 prototype.
 ** Copyright (c) 2009-2012  New York University and The University of Iowa
 ** See the file COPYING in the top-level source directory for licensing
 ** information.\endverbatim
 **
 ** \brief Encapsulation of the result of a query.
 **
 ** Encapsulation of the result of a query.
 **/

#include "cvc4_public.h"

#ifndef __CVC4__RESULT_H
#define __CVC4__RESULT_H

#include <iostream>
#include <string>

#include "util/exception.h"

namespace CVC4 {

class Result;

std::ostream& operator<<(std::ostream& out, const Result& r) CVC4_PUBLIC;

/**
 * Three-valued SMT result, with optional explanation.
 */
class CVC4_PUBLIC Result {
public:
  enum Sat {
    UNSAT = 0,
    SAT = 1,
    SAT_UNKNOWN = 2
  };

  enum Validity {
    INVALID = 0,
    VALID = 1,
    VALIDITY_UNKNOWN = 2
  };

  enum Type {
    TYPE_SAT,
    TYPE_VALIDITY,
    TYPE_NONE
  };

  enum UnknownExplanation {
    REQUIRES_FULL_CHECK,
    INCOMPLETE,
    TIMEOUT,
    RESOURCEOUT,
    MEMOUT,
    INTERRUPTED,
    NO_STATUS,
    UNSUPPORTED,
    OTHER,
    UNKNOWN_REASON
  };

private:
  enum Sat d_sat;
  enum Validity d_validity;
  enum Type d_which;
  enum UnknownExplanation d_unknownExplanation;

public:
  Result() :
    d_sat(SAT_UNKNOWN),
    d_validity(VALIDITY_UNKNOWN),
    d_which(TYPE_NONE),
    d_unknownExplanation(UNKNOWN_REASON) {
  }
  Result(enum Sat s) :
    d_sat(s),
    d_validity(VALIDITY_UNKNOWN),
    d_which(TYPE_SAT),
    d_unknownExplanation(UNKNOWN_REASON) {
    CheckArgument(s != SAT_UNKNOWN,
                  "Must provide a reason for satisfiability being unknown");
  }
  Result(enum Validity v) :
    d_sat(SAT_UNKNOWN),
    d_validity(v),
    d_which(TYPE_VALIDITY),
    d_unknownExplanation(UNKNOWN_REASON) {
    CheckArgument(v != VALIDITY_UNKNOWN,
                  "Must provide a reason for validity being unknown");
  }
  Result(enum Sat s, enum UnknownExplanation unknownExplanation) :
    d_sat(s),
    d_validity(VALIDITY_UNKNOWN),
    d_which(TYPE_SAT),
    d_unknownExplanation(unknownExplanation) {
    CheckArgument(s == SAT_UNKNOWN,
                  "improper use of unknown-result constructor");
  }
  Result(enum Validity v, enum UnknownExplanation unknownExplanation) :
    d_sat(SAT_UNKNOWN),
    d_validity(v),
    d_which(TYPE_VALIDITY),
    d_unknownExplanation(unknownExplanation) {
    CheckArgument(v == VALIDITY_UNKNOWN,
                  "improper use of unknown-result constructor");
  }
  Result(const std::string& s);

  enum Sat isSat() const {
    return d_which == TYPE_SAT ? d_sat : SAT_UNKNOWN;
  }
  enum Validity isValid() const {
    return d_which == TYPE_VALIDITY ? d_validity : VALIDITY_UNKNOWN;
  }
  bool isUnknown() const {
    return isSat() == SAT_UNKNOWN && isValid() == VALIDITY_UNKNOWN;
  }
  Type getType() const {
    return d_which;
  }
  bool isNull() const {
    return d_which == TYPE_NONE;
  }
  enum UnknownExplanation whyUnknown() const {
    CheckArgument( isUnknown(), this,
                   "This result is not unknown, so the reason for "
                   "being unknown cannot be inquired of it" );
    return d_unknownExplanation;
  }

  bool operator==(const Result& r) const throw();
  inline bool operator!=(const Result& r) const throw();
  Result asSatisfiabilityResult() const throw();
  Result asValidityResult() const throw();

  std::string toString() const;

};/* class Result */

inline bool Result::operator!=(const Result& r) const throw() {
  return !(*this == r);
}

std::ostream& operator<<(std::ostream& out,
                         enum Result::Sat s) CVC4_PUBLIC;
std::ostream& operator<<(std::ostream& out,
                         enum Result::Validity v) CVC4_PUBLIC;
std::ostream& operator<<(std::ostream& out,
                         enum Result::UnknownExplanation e) CVC4_PUBLIC;

bool operator==(enum Result::Sat s, const Result& r) throw() CVC4_PUBLIC;
bool operator==(enum Result::Validity v, const Result& r) throw() CVC4_PUBLIC;

bool operator!=(enum Result::Sat s, const Result& r) throw() CVC4_PUBLIC;
bool operator!=(enum Result::Validity v, const Result& r) throw() CVC4_PUBLIC;

}/* CVC4 namespace */

#endif /* __CVC4__RESULT_H */
