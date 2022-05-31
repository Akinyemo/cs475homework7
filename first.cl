kernel
void
ArrayMult( global const float *dA, global const float *dB,local float* prods,  global float *dC )
{
	int gid = get_global_id( 0 );
    int numItems = get_local_size(0);
    int tnum = get_local_id(0);
    int wgNum = get_group_id(0);


	/* dC[gid] = (dA[gid] * dB[gid]) + dC[gid]; */
	 prods[tnum] = dA[gid] * dB[gid];
}
