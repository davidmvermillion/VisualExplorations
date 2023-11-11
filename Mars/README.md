# Mars Project
A computer vision project to extract features from a single dense image of Mars from the Mars Reconnaissance Orbiter.

# Project Plan

1. Examine image for extractable features
	a. Crater count [start here]
	b. Crater diameters (requires extra data)
	c. Ejecta diameters
	d. Ridge counts
	e. Compare smooth to cratered surface statistics
2. Determine package and pre-trained model to use
3. Determine computer vision model to use

## Files
1. [ESP_072719_1970_RED.browse.jpg](https://github.com/davidmvermillion/VisualExplorations/blob/main/Mars/ESP_072719_1970_RED.browse.jpg) is the low-resolution dataset preview image.
2. [ESP_072719_1970_RED.LBL](https://github.com/davidmvermillion/VisualExplorations/blob/main/Mars/ESP_072719_1970_RED.LBL) has the detailed information about the image in the LBL format.
3. [ESP_072719_1970_RED.XML](https://github.com/davidmvermillion/VisualExplorations/blob/main/Mars/ESP_072719_1970_RED.XML) has the detailed information about the image in the XML format.

## Data Source
1. [Mars Reconnaissance Orbiter ESP_072719_1970_RED.JP2](https://pds-imaging.jpl.nasa.gov/beta/record?uri=atlas:pds3:mro:mars_reconnaissance_orbiter:/MROHR_0001/data/RDR/ESP/ORB_072700_072799/ESP_072719_1970/ESP_072719_1970_RED.JP2)