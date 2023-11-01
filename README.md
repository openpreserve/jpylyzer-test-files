# jpylyzer-test-files

## Purpose of these files

These files were created as an openly licensed reference data set for testing current and upcoming versions of [jpylyzer](http://openplanets.github.io/jpylyzer/). It includes valid JP2s that were created using a variety of encoding applications, images that are damaged or otherwise corrupted, images that violate certain aspects of the JP2 format specification, and files that aren't even JP2s at all. Jpylyzer should be able to process all of these files without crashing, freezing or raising exceptions. Furthermore, a separate set of images is included that contain codestream marker segments that are not yet fully supported by jpylyzer. More files will be added over time.   
 

## Description of dataset
The tables below show the main characterics of all files in the dataset.

|File name|Description|Valid|
|:---|:---|:---|
|reference.jp2|Reference image|Yes|
|signature_corrupted.jp2|Corrupted signature box (byte 0x0A at offset 11 changed to 0x0B)|No|
|invalid_character_in_xml.jp2|XML box contains bell character (0x07)|No|
|invalid_character_in_codestream_comment.jp2|Codestream comment contains invalid character|No|
|null_character_in_codestream_comment.jp2|Codestream comment contains null character|No|
|missing_null_terminator_in_urlbox.jp2|Loc (URL) field in URL Box not terminated by null character|No|
|last_byte_missing.jp2|Last byte of image is missing|No|
|truncated_at_byte_5000.jp2|Data after byte 4999 missing|No|
|data_missing_in_last_tilepart.jp2|Most of last tilepart is missing|No|
|meth_is_2_no_icc.jp2|Value of METH field in colour specification box is 2, but image doesn't contain an ICC profile |No|
|height_image_header_damaged.jp2|HEIGHT field in image header is damaged (and not consistent with xsiz field in codestream header)|No|
|triggerUnboundLocalError.jp2|Corrupted codestream; triggers runtime error in jpylyzer versions 1.14.2 and earlier|No|
|modified_date_out_of_range.jp2|Extreme value (Jan  1 1768) of  file last modified date; causes ValueError under Windows |Yes|
|ランダム日本語テキスト.jp2|Filename contains non-Western (Japanese) characters|Yes|
|隨機中國文字.jp2|Filename contains non-Western (Chinese) characters|Yes|
|í¿¿ñ Ÿð°žôµ¢óŠ².jp2|UTF-8 filename that contains surrogate pair|Yes|
|óò¶œòŠ ¡í¯òœ .jp2|UTF-8 filename that contains surrogate pair|Yes|
|ó©ñ €šñ€í«ðµ¹.jp2|UTF-8 filename that contains surrogate pair|Yes|
|empty.jp2|Empty (zero byte) file|No|
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
|oj-illegal-rcom-value.jp2|Illegal *rcom* value in COM marker segment|No|
|oj-tnsot-0.jp2|Value of *tnsot* is 0 (number of tile-parts of tile not defined in header)|Yes|
|oj-ytsiz-not-valid-1.jp2|Illegal value of *yTsiz*|No|
|oj-ytsiz-not-valid-2.jp2|Illegal value of *yTsiz*|No|
|oj-xtsiz-not-valid-1.jp2|Illegal value of *xTsiz*|No|
|oj-tileindex-error-\*.jp2|Erroneous tile index value(s)|No|
|oj-issue363-4740.jp2|Resulted in UnboundLocalError when validated in J2C mode|No|
|oj-poc-main-header.jp2|Contains progression order change (POC) marker in main codestream header|Yes|
|oj-rgn-main-header-1.jp2|Contains region of interest (RGN) marker in main codestream header|Yes|
|oj-rgn-tilepart-header-1.jp2|Contains region of interest (RGN) marker in tilepart header|Yes|
|oj-plm-main-header.jp2|Contains packet length (PLM) marker in main codestream header|No|
|oj-ppm-main-header-1.jp2|Contains packed packet headers, main header marker in main codestream header|No|
|oj-ppm-main-header-2.jp2|Contains packed packet headers, main header marker in main codestream header|No|
|oj-ppm-main-header-3.jp2|Contains packed packet headers, main header markers in main codestream header|No|
|oj-ppt-tilepart-header.jp2|Contains packed packet headers, tile part header markers in tile part header|No|
|tika-tlm-main-header.jp2|Contains tile-part lengths (TLM) marker in main codestream header|Yes|
|tika-crg-main-header.jp2|Contains component registration (CRG) marker in main codestream header|Yes|
|bitwiser-icc-corrupted-tagcount-\*.jp2|Bit-corrupted *tagCount* field in ICC profile|Yes<sup>(1)</sup>|
|bitwiser-resolutionbox-corrupted-boxlength-8127\*.jp2|Bit-corrupted *Box Length* field in Resolution Box|No|
|bitwiser-headerbox-corrupted-boxlength-22181.jp2|Bit-corrupted *Box Length* field in JP2 Header Box|No|
|bitwiser-codestreamheader-corrupted-xsiz\*.jp2|Bit-corrupted *xsiz* marker in codestream header|No|
|bitwiser-codestreamheader-corrupted-ysiz\*.jp2|Bit-corrupted *ysiz* marker in codestream header|No|
|null_terminated_content_in_xml_box.jp2|Content of XML box contains null terminator. Demonstrates *--nullxml* option|No|
|palettedImage.jp2|Paletted image (palette box, component mapping box)|Yes|
|sentinel.jp2|Contains [GeoTIFF box](http://fileformats.archiveteam.org/wiki/GeoJP2) (UUID box)|Yes|
|profile-\*.j2c|These codestreams conform to different profiles set by *rsiz*|Yes (J2C)|
|erdas-nullinput-uint8-rgb-null-2tileparts.jp2|null pattern (synthetic dataset) with:<br>&nbsp;&nbsp;max Lplt = 2^5-1<br>&nbsp;&nbsp;max plt's per tile-part = 2<br>This was created to be a small (for unit tests) dataset that's more representative of the larger datasets (>~4GB) the ERDAS APOLLO GeoCompressor can create.|Yes|
|erdas-sandiego3i_5.2.jp2|Created with ECW JPEG 2000 SDK v5.2.0.172|Yes|
|erdas-sandiego3i_5.5.jp2|Created with ECW JPEG 2000 SDK v5.5.0.2042 (latest 2021 release)|Yes|
|erdas-sandiego1m_null.jp2| Created with ECW JPEG 2000 SDK v3.5.0.4<br>Has "holes" to demonstrate alpha|Yes|
|oj-ht-byte.jph|JPH file from OpenJPEG-data|Yes (JPH)|
|wrongbpc-ht.jph|JPH file with wrong Bits Per Component value in image header|No (JPH)|
|oht-ht.jph|JPH file, created with OpenHTJ2K|Yes (JPH)|
|htj2k_cpf_broadcast.jhc|HTJ2K codestream with CPF and CAP marker segments|[No (JHC)](https://github.com/openpreserve/jpylyzer/issues/205#issuecomment-1745405780)|
|oht-ht.jhc|HTJ2K codestream, created with OpenHTJ2K|Yes (JHC)|
|ojph-ht.jhc|HTJ2K codestream, created with OpenJPH|Yes (JHC)|
|grok-ht.jhc|HTJ2K codestream, created with Grok|Yes (JHC)|
|oj-ht-byte_causal.jhc|HTJ2K codestream from OpenJPEG-data|Yes (JHC)|

The following table lists JP2s with codestream marker segments that are not yet fully supported by jpylyzer:

|File name|box|
|:---|:---|
|openJPEG15.jp2 (more images in [OpenJPEG-data](https://github.com/uclouvain/openjpeg-data))|COC|
|oj-rgn-main-header-1.jp2, oj-rgn-tilepart-header-1.jp2|RGN|
|openJPEG15.jp2 (more images in [Tika Regression Corpus](http://162.242.228.174/share/jp2.tgz))|QCC|
|oj-poc-main-header.jp2|POC|
|oj-plm-main-header.jp2|PLM|
|oj-ppm-main-header-1.jp2, oj-ppm-main-header-2.jp2, oj-ppm-main-header-3.jp2|PPM|
|tika-tlm-main-header.jp2, more files in [Tika Regression Corpus](http://162.242.228.174/share/jp2.tgz)|TLM|
|tika-crg-main-header.jp2, more files in [Tika Regression Corpus](http://162.242.228.174/share/jp2.tgz)|CRG|
|sentinel.jp2; palettedImage.jp2; reference.jp2|PLT|
|oj-ppt-tilepart-header.jp2|PPT|

(1) Jpylyzer currently doesn't do any validation of ICC profiles. However, see: [https://github.com/openplanets/jpylyzer/issues/45](https://github.com/openplanets/jpylyzer/issues/45)


## Image attribution and provenance

Most of these images were derived from the following source image: 

[http://commons.wikimedia.org/wiki/File:1783_balloonj.jpg](http://commons.wikimedia.org/wiki/File:1783_balloonj.jpg "http://upload.wikimedia.org/wikipedia/commons/a/a8/1783_balloonj.jpg")

> 1786 description of the historic Montgolfier Brothers' 1783 balloon flight. Illustration with engineering proportions and description.

Public Domain, released under the [CC-BY](http://creativecommons.org/licenses/by/3.0/) license.

### *openjpeg-data* images

The *oj-* images were taken from the *openjpeg-data* repository:

<https://github.com/uclouvain/openjpeg-data>

License unknown.

### *Apache Tika* regression corpus images

The *tika-* images were taken from the *Apache Tika* regression corpus:

<https://cwiki.apache.org/confluence/display/TIKA/CommonCrawl3>

License unknown.

### *bitwiser* images

The *bitwiser* images were created by Andy Jackson (British Library) using the *Bitwiser* tools:

<https://github.com/openplanets/bitwiser>

Public Domain, released under the [CC-BY](http://creativecommons.org/licenses/by/3.0/) license.

### *null_terminated_content_in_xml_box.jp2*

This image was taken from:

[http://sdowww.lmsal.com/sdomedia/hv_jp2kwrite/v0.8/jp2/AIA/2014/02/01/304/](http://sdowww.lmsal.com/sdomedia/hv_jp2kwrite/v0.8/jp2/AIA/2014/02/01/304/)

Image created by [Lockheed Martin Solar and Astrophysics Laboratory](http://www.lmsal.com/), public domain (license unknown).

### *palettedImage.jp2* 
[PROBA2](http://en.wikipedia.org/wiki/Proba-2) [SWAP](http://en.wikipedia.org/wiki/SWAP_%28instrument%29) solar image, downloaded from:

[http://proba2.oma.be/data/SWAP](http://proba2.oma.be/data/SWAP)

SWAP is a project of the [Centre Spatial de Liege](http://www.csl.ulg.ac.be/jcms/c_5053/en/home) and the [Royal Observatory of Belgium](http://www.astro.oma.be/EN/hotnews/index.php), funded by the Belgian Federal Science Policy Office ([BELSPO](http://www.belspo.be/belspo/index_en.stm)). See also the SWAP  Reference papers:

- [Seaton et al. 2013](http://adsabs.harvard.edu/abs/2013SoPh..286...43S), "The SWAP EUV Imaging Telescope Part I: Instrument Overview and Pre-Flight Testing", *Solar Physics*. 
- [Halain et al. 2013](http://adsabs.harvard.edu/abs/2013SoPh..286...67H), "The SWAP EUV Imaging Telescope. Part II: In-flight Performance and Calibration", *Solar Physics*.

Public domain (license unknown).

### *sentinel.jp2*

taken from Sentinel-2 Level-1C test product, European Space Agency:

<https://sentinel.esa.int/web/sentinel/user-guides/sentinel-2-msi/test-data>

### *triggerUnboundLocalError.jp2*

Created by [Stefan Weil](https://github.com/openpreserve/jpylyzer/pull/72); used with permission from the author.

### *htj2k_cpf_broadcast.j2c*

Created by [michaeldsmith](https://github.com/openpreserve/jpylyzer-test-files/issues/8#issuecomment-1743334801); used with permission from the author.

### *erdas* images

Created using ERDAS ERDAS ECW/JP2 SDK; provided with permission by [Hexagon Geospatial](https://hexagon.com/company/divisions/safety-infrastructure-geospatial).

## Funding
This work was partially supported by the [SCAPE](http://www.scape-project.eu/) Project. The SCAPE project is co-funded by the European Union under FP7 ICT-2009.4.1 (Grant Agreement number 270137).

