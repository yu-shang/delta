#include "delta.h"
int r_main(double *r_data, char **r_rowsnames, char **r_colsnames, int *r_rows, int *r_cols, char **rfile, double *rq, double *rc, double *rf, int *rk, int *rr, int *ro, int *rd)
{
  init_delta(r_data, r_rowsnames, r_colsnames, r_rows, r_cols, rfile[0], rq, rc, rf, rk, rr, ro, rd);
  return 1;
}
