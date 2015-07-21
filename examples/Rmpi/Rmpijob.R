# Similar to the the tutorial at
# https://bioinfomagician.wordpress.com/2013/12/16/rmpi-tutorial-4-getting-data-back-from-slaves/
# Modified by Dr. Marina Kraeva from Iowa State

library(Rmpi, lib.loc = "~/R/x86_64-unknown-linux-gnu-library/3.2/")
mpi.spawn.Rslaves(nslaves = 30)

mpi.bcast.cmd(id<-mpi.comm.rank())
mpi.bcast.cmd(x<-id)
mpi.bcast.cmd(mpi.gather.Robj(x))
x<-"test mpi.gather.Robj"
mpi.gather.Robj(x)

mpi.bcast.cmd(obj<-id+10)
mpi.bcast.cmd(nn<-mpi.allgather.Robj(obj))
obj<-rpois(1, 10)
mpi.allgather.Robj(obj)
mpi.remote.exec(nn)

mpi.close.Rslaves()
mpi.quit()
