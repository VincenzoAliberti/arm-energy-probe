# Gnuplot script file for plotting data coming from ARM Energy Probe
# File containing data is named measured.dat
# modify below rows to customize graph
InputFile	= "measured.dat"
GraphTitle 	= "Power Consumption vs Time"
XTitle		= "Time [s]"
YTitle		= "Power [W]"
W1Title		= "Channel 1"
W2Title		= "Channel 2"
W3Title		= "Channel 3"

# clean-up previuos settings
set datafile commentschars "#%"			# character to skip comment rows
set autoscale                         	# scale axes automatically
unset log                              	# remove any log-scaling
unset label                            	# remove any previous labels
unset arrow							   	# remove any previous arrow
set xtics auto                         	# set xtics automatically
set ytics auto                         	# set ytics automatically
set mxtics 05
set mytics 10                        
#set logscale y
set grid ytics mytics

# graph set-up
set title GraphTitle
set xlabel XTitle
set ylabel YTitle
set key on below right font "Arial,7" box 7

# plots data
plot	InputFile using 1:4 title W1Title with lines, \
		InputFile using 1:7 title W2Title with lines, \
		InputFile using 1:10 title W3Title with lines
