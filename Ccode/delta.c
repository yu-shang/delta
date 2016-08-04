#include "delta.h"
int main(int argc, char* argv[])
{
	uglyTime(NULL);
	printf("\nDELTA %.1f: greedy deep clustering (compiled "__DATE__" "__TIME__")\n\n", VER);
	rows = cols = 0;
	get_options(argc, argv);
	get_matrix_size(po->FP);	
	progress("File %s contains %d genes by %d stress", po -> FN, rows, cols);
	if(rows < 3 || cols < 3)  errAbort("Not enough genes or stress to make inference");
	genes = alloc2c_c(rows, LABEL_LEN);
	conds = alloc2c_c(cols, LABEL_LEN);
	read_labels(po -> FP);
	if(po->IS_DISCRETE)  read_discrete(po -> FP);
	else
	{
		read_continuous(po -> FP);
		discretize(addSuffix(po->FN, ".rules"));
	}
	fclose(po->FP);
	if(po->IS_list)
	{
		sub_genes = alloc2c_c(rows, LABEL_LEN);
		read_list(po->FL);
	}
	if(po->IS_SWITCH)  read_and_solve_blocks(po->FB, addSuffix(po->BN, ".expansion"));
	else
	{
		write_imported(addSuffix(po->FN, ".chars"));
		if(po->IS_list)  make_graph(addSuffix(addSuffix(po->FN, po->LN),".block"));
		else  make_graph(addSuffix(po->FN, ".blocks"));
	}
	free(po);
	free(sublist);
	return 0;
}