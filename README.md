#jpylyzer-test-files

##Purpose of these files

These files were created as an openly licensed reference data set for testing current and upcoming versions of [jpylyzer](http://www.openplanetsfoundation.org/software/jpylyzer). It includes valid JP2s that were created using a variety of encoding applications, images that are damaged or otherwise corrupted, images that violate certain aspects of the JP2 format specification, and files that aren't even JP2s at all. Jpylyzer should be able to process all of these files without crashing, freezing or raising exceptions. More files will be added over time.   
 

##Description of dataset
The table below shows the main characterics of all files in the dataset.  

|File name|Description|Valid JP2
|:---|:---|:---|
|reference.jp2|Reference image|Yes|
|signature_corrupted.jp2|Corrupted signature box (byte 0x0A at offset 11 changed to 0x0B)|No|
|invalid_character_in_xml.jp2|XML box contains bell character (0x07)|No|
|invalid_character_in_codestream_comment.jp2|Codestream comment contains invalid character|No<sup>(1)</sup>|
|last_byte_missing.jp2|Last byte of image is missing|No|
|truncated_at_byte_5000.jp2|Data after byte 4999 missing|No|
|data_missing_in_last_tilepart.jp2|Most of last tilepart is missing|No|
|meth_is_2_no_icc.jp2|Value of METH field in colour specification box is 2, but image doesn't contain an ICC profile |No|
|height_image_header_damaged.jp2|HEIGHT field in image header is damaged (and not consistent with xsiz field in codestream header)|No|
|is_codestream.jp2|JPEG 2000 codestream (no JP2)|No|
|is_jpx.jp2|JPX (JPEG 2000 Part 2) image|No|
|is_jpm.jp2|JPM (JPEG 2000 Part 6) image|No|
|is_jpeg.jp2|JPEG image|No|
|jpx_disguised_as_jp2.jp2|JPX (JPEG 2000 Part 2) with brand field suggesting it may be JP2 (Photoshop)|No|
|kakadu61.jp2|Created with Kakadu 6.1 encoder|Yes|
|kakadu71.jp2|Created with Kakadu 7.1 encoder|Yes|
|aware.jp2|Created with Aware encoder|Yes|
|openJPEG15.jp2|Created with OpenJPEG 1.5 encoder|Yes|
|graphicsMagick.jp2|Created with GraphicsMagick / JasPer 1.9 encoder|Yes|

(1)Not detected yet, will be added in upcoming release!


##Image attribution and provenance

All images are derived from the following source image: 

[http://commons.wikimedia.org/wiki/File:1783_balloonj.jpg](http://commons.wikimedia.org/wiki/File:1783_balloonj.jpg "http://upload.wikimedia.org/wikipedia/commons/a/a8/1783_balloonj.jpg")

> 1786 description of the historic Montgolfier Brothers' 1783 balloon flight. Illustration with engineering proportions and description.

Public Domain.

##License
All images released under the [CC-BY](http://creativecommons.org/licenses/by/3.0/) license.

##Funding
This work was partially supported by the [SCAPE](http://www.scape-project.eu/) Project. The SCAPE project is co-funded by the European Union under FP7 ICT-2009.4.1 (Grant Agreement number 270137).

