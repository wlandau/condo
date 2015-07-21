module load LAS/R/3.2.0
wget https://cran.r-project.org/src/contrib/Rmpi_0.6-5.tar.gz

mkdir -p ~/R
mkdir -p ~/R/x86_64-unknown-linux-gnu-library
mkdir -p ~/R/x86_64-unknown-linux-gnu-library/3.2

R CMD INSTALL Rmpi_0.6-5.tar.gz -l ~/R/x86_64-unknown-linux-gnu-library/3.2 --configure-args="--with-Rmpi-include=/sh\
ared/intel/impi/5.0.3.048/intel64/include --with-Rmpi-libpath=/shared/intel/impi/5.0.3.048/intel64/lib  --with-Rmpi-t\
ype=OPENMPI"
rm Rmpi_0.6-5.tar.gz