

all: env data scripts
	echo "done"

env:
	conda env create

data:
	curl -O https://losc.ligo.org/s/events/GW150914/H-H1_LOSC_4_V1-1126259446-32.hdf5
	curl -O https://losc.ligo.org/s/events/GW150914/L-L1_LOSC_4_V1-1126259446-32.hdf5
	curl -O https://losc.ligo.org/s/events/GW150914/H-H1_LOSC_16_V1-1126259446-32.hdf5
	curl -O https://losc.ligo.org/s/events/GW150914/L-L1_LOSC_16_V1-1126259446-32.hdf5
	curl -O https://losc.ligo.org/s/events/GW150914/GW150914_4_NR_waveform.txt

scripts:
	curl -O https://losc.ligo.org/s/sample_code/readligo.py
	curl -O https://losc.ligo.org/s/events/GW150914/GW150914_tutorial.ipynb

notebook:
	jupyter-notebook --log-level=WARN