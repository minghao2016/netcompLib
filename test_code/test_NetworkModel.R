# testing new functionality

library(netcompLib)
load("../../network-comparison/netcomp-project/data/method_data/small_samp_DFcorr.Rdata")


test1 = NetworkModel(Nnodes = 10)
#|----##Function parameters changed -- only model_params --Thu Jul 30 20:00:51 2015--
getNnodes(test1)
getNetType(test1)

test2 = NetworkModel(Nnodes = 10, type = "block", model_param = set_model_param(block_assign = rep(c(1,2), each = 5), block_probs = matrix(c(0.1, 0.7, 0.7, 0.5), nrow = 2)))
#|----##Function parameters changed -- only model_params --Thu Jul 30 20:00:51 2015--
getNnodes(test2)
getNetType(test2)
getEdgeProbMat(test2)
sampleNetwork(test2)
extractStruct(test2)
#|----##Issue #26 -- destroy this function; replace with call to base NetworkStruct function. --Sat Oct 10 19:52:04 2015--

test2@assign
#|----##Maybe fix -- 'assign' field in NetworkModelSBM is edited --Sat Oct 10 19:33:04 2015--
test2@probmat

test3 = NetworkModel(Nnodes = 10, type = "tree")
#|----##Function parameters changed -- only model_params --Thu Jul 30 20:00:51 2015--
getNnodes(test3)
getNetType(test3)
test3
getEdgeProbMat(test3)
extractStruct(test3)
#|----##Issue #26 -- destroy this function; replace with call to base NetworkStruct function. --Sat Oct 10 19:52:04 2015--

test4 = NetworkModel(Nnodes = 10, type = "latent")
#|----##Function parameters changed -- only model_params --Thu Jul 30 20:00:51 2015--
getNnodes(test4)
getNetType(test4)
round(getEdgeProbMat(test4),2)

test5 = NetworkModel(Nnodes = 5, type = "random", model_param = set_model_param(random_ngroups = 3))
#|----##Function parameters changed -- only model_params --Thu Jul 30 20:00:51 2015--
getNnodes(test5)
getNetType(test5)
round(getEdgeProbMat(test5),2)
extractStruct(test5)
#|----##Issue #26 -- destroy this function; replace with call to base NetworkStruct function. --Sat Oct 10 19:52:04 2015--

NetworkStruct(Nnodes = 15, type = "block")
#|----##Function parameters changed -- only model_params --Thu Jul 30 20:22:31 2015--
NetworkStruct(Nnodes = 15, type = "tree")
#|----##Function parameters changed -- only model_params --Thu Jul 30 20:22:31 2015--
NetworkStruct(Nnodes = 15, type = "random")
#|----##Function parameters changed -- only model_params --Thu Jul 30 20:22:31 2015--


pl = list(cc_adj = c(1,2), thres_ignore = c(2,5,10), alphas = 0.05, n_models = c(1,20))
#|----##In set_sim_param, n_models is renamed into n_structs --Tue Sep  8 02:23:23 2015--
computePval(extractStruct(test2), sampleNetwork(test2), sampleNetwork(test2), 1, pl)
#|----##Change available modes (default vs default-slow) --Mon Apr 18 14:31:29 2016--
#|----##Changed parameter 'mode' to 'output_mode' --Fri Feb 12 15:17:37 2016--
#|----##Issue #26 -- destroy this function; replace with call to base NetworkStruct function. --Sat Oct 10 19:52:04 2015--
computePval(extractStruct(test2), sampleNetwork(test2), sampleNetwork(test2), 1, pl)
#|----##Change available modes (default vs default-slow) --Mon Apr 18 14:31:29 2016--
#|----##Changed parameter 'mode' to 'output_mode' --Fri Feb 12 15:17:37 2016--
#|----##Issue #26 -- destroy this function; replace with call to base NetworkStruct function. --Sat Oct 10 19:52:04 2015--
computePval(extractStruct(test2), sampleNetwork(test2), sampleNetwork(test2), 1, pl)
#|----##Change available modes (default vs default-slow) --Mon Apr 18 14:31:29 2016--
#|----##Changed parameter 'mode' to 'output_mode' --Fri Feb 12 15:17:37 2016--
#|----##Issue #26 -- destroy this function; replace with call to base NetworkStruct function. --Sat Oct 10 19:52:04 2015--
computePval(extractStruct(test2), sampleNetwork(test2), sampleNetwork(test2), 1, pl)
#|----##Change available modes (default vs default-slow) --Mon Apr 18 14:31:29 2016--
#|----##Changed parameter 'mode' to 'output_mode' --Fri Feb 12 15:17:37 2016--
#|----##Issue #26 -- destroy this function; replace with call to base NetworkStruct function. --Sat Oct 10 19:52:04 2015--

netsl = NetworkStructList(type = "block")
#|----##Function parameters changed -- only model_params --Thu Jul 30 20:22:32 2015--
computePval(netsl, sampleNetwork(test2), sampleNetwork(test2), 1, pl)
#|----##Change available modes (default vs default-slow) --Mon Apr 18 14:31:29 2016--
#|----##Changed parameter 'mode' to 'output_mode' --Fri Feb 12 15:17:37 2016--
getNetType(netsl)

NetM = NetworkModel(Nnodes = 30, type = "block")
#|----##Function parameters changed -- only model_params --Thu Jul 30 20:00:51 2015--
adja1 = sampleNetwork(NetM)
adja2 = sampleNetwork(NetM)
Nobs = 1

NetS = NetworkStructSBM(Nnodes = 30, model_param = set_model_param(block_nclass = 3))
#|----##Function parameters changed -- only model_params --Thu Jul 30 20:22:33 2015--
getNetType(NetS)

m1 = NetworkModel(Nnodes = 50, type = "block", model_param = set_model_param(block_probs = matrix(0.45, nrow = 1, ncol = 1), block_assign = rep(1, times = 50)))
#|----##Function parameters changed -- only model_params --Thu Jul 30 20:00:51 2015--
m2 = NetworkModel(Nnodes = 50, type = "block", model_param = set_model_param(block_probs = matrix(0.5, nrow = 1, ncol = 1), block_assign = rep(1, times = 50)))
#|----##Function parameters changed -- only model_params --Thu Jul 30 20:00:51 2015--

computePval(NetworkStructList(Nnodes = 50, type = "tree"), sampleNetwork(m1), sampleNetwork(m2), 1, pl)
#|----##Change available modes (default vs default-slow) --Mon Apr 18 14:31:29 2016--
#|----##Changed parameter 'mode' to 'output_mode' --Fri Feb 12 15:17:37 2016--
#|----##Function parameters changed -- only model_params --Thu Jul 30 20:22:32 2015--
computePval(NetworkStructList(Nnodes = 50, type = "random"), sampleNetwork(m1), sampleNetwork(m2), 1, pl)
#|----##Change available modes (default vs default-slow) --Mon Apr 18 14:31:29 2016--
#|----##Changed parameter 'mode' to 'output_mode' --Fri Feb 12 15:17:37 2016--
#|----##Function parameters changed -- only model_params --Thu Jul 30 20:22:32 2015--


nmp = NetworkModelPair(m1 = NetworkModel(type = "block"), is_null = TRUE)
#|----##Parameters changed --Thu Sep 17 05:27:59 2015--
#|----##Function parameters changed -- only model_params --Thu Jul 30 20:22:28 2015--
#|----##Function parameters changed -- only model_params --Thu Jul 30 20:00:51 2015--
sampleNetwork(NetM = nmp)


