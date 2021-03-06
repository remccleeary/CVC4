/*********************                                                        */
/*! \file clock_gettime.c
 ** \verbatim
 ** Original author: mdeters
 ** Major contributors: none
 ** Minor contributors (to current version): none
 ** This file is part of the CVC4 prototype.
 ** Copyright (c) 2009-2012  New York University and The University of Iowa
 ** See the file COPYING in the top-level source directory for licensing
 ** information.\endverbatim
 **
 ** \brief Replacement for clock_gettime() for systems without it (like
 ** Mac OS X)
 **
 ** Replacement for clock_gettime() for systems without it (like Mac
 ** OS X).
 **/

#include "cvc4_private.h"

#include "lib/clock_gettime.h"

#ifdef __cplusplus
extern "C" {
#endif /* __cplusplus */

#if !(defined(__APPLE__) || defined(__WIN32__))
#  warning "This code assumes you're on Mac OS X or Win32, and you don't seem to be.  You'll likely have problems."
#endif /* !(__APPLE__ || __WIN32__) */

#ifdef __APPLE__

#include <stdio.h>
#include <errno.h>
#include <mach/mach_time.h>

static double s_clockconv = 0.0;

long clock_gettime(clockid_t which_clock, struct timespec* tp) {
  if( s_clockconv == 0.0 ) {
    mach_timebase_info_data_t tb;
    kern_return_t err = mach_timebase_info(&tb);
    if(err == 0) {
      s_clockconv = ((double) tb.numer) / tb.denom;
    } else {
      return -EINVAL;
    }
  }

  switch(which_clock) {
  case CLOCK_REALTIME:
  case CLOCK_REALTIME_HR:
  case CLOCK_MONOTONIC:
  case CLOCK_MONOTONIC_HR: {
      uint64_t t = mach_absolute_time() * s_clockconv;
      tp->tv_sec = t / 1000000000ul;
      tp->tv_nsec = t % 1000000000ul;
    }
    break;
  default:
    return -EINVAL;
  }

  return 0;
}

#else /* else we're __WIN32__ */

#include <time.h>
#include <windows.h>

long clock_gettime(clockid_t which_clock, struct timespec* tp) {
  if(tp != NULL) {
    FILETIME ft;
    GetSystemTimeAsFileTime(&ft);
    uint64_t nanos = ((((uint64_t)ft.dwHighDateTime) << 32) | ft.dwLowDateTime) * 100;
    tp->tv_sec = nanos / 1000000000ul;
    tp->tv_nsec = nanos % 1000000000ul;
  }
  return 0;
}

#endif /* __APPLE__ / __WIN32__ */

#ifdef __cplusplus
}/* extern "C" */
#endif /* __cplusplus */
