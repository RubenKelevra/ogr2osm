  $ [ "$0" != "/bin/bash" ] || shopt -s expand_aliases
  $ [ -n "$PYTHON" ] || PYTHON="`which python`"
  $ alias ogr2osm="PYTHONPATH=$TESTDIR/.. $PYTHON -m ogr2osm"

basicgeometries:
  $ ogr2osm -f $TESTDIR/shapefiles/basic_geometries.kml
  Using default translations
  Preparing to convert .* (re)
  Detected projection metadata:
  GEOGCS["WGS 84",
      DATUM["WGS_1984",
          SPHEROID["WGS 84",6378137,298.257223563,
              AUTHORITY["EPSG","7030"]],
          AUTHORITY["EPSG","6326"]],
      PRIMEM["Greenwich",0,
          AUTHORITY["EPSG","8901"]],
      UNIT["degree",0.0174532925199433,
          AUTHORITY["EPSG","9122"]],
      AXIS["Latitude",NORTH],
      AXIS["Longitude",EAST],
      AUTHORITY["EPSG","4326"]]
  Splitting long ways
  Writing file header
  Writing nodes
  Writing ways
  Writing relations
  Writing file footer
  $ xmllint --format basic_geometries.osm | diff -uNr - $TESTDIR/basic_geometries.xml

basicgeometriesduplicate:
  $ ogr2osm -t $TESTDIR/translations/duplicate-translation.py -f $TESTDIR/shapefiles/basic_geometries_duplicate.kml
  Found valid translation class DuplicateTranslation
  Preparing to convert .* (re)
  Detected projection metadata:
  GEOGCS["WGS 84",
      DATUM["WGS_1984",
          SPHEROID["WGS 84",6378137,298.257223563,
              AUTHORITY["EPSG","7030"]],
          AUTHORITY["EPSG","6326"]],
      PRIMEM["Greenwich",0,
          AUTHORITY["EPSG","8901"]],
      UNIT["degree",0.0174532925199433,
          AUTHORITY["EPSG","9122"]],
      AXIS["Latitude",NORTH],
      AXIS["Longitude",EAST],
      AUTHORITY["EPSG","4326"]]
  Merging tags for duplicate node
  Merging tags for duplicate node
  Merging tags for duplicate node
  Merging tags for duplicate node
  Merging tags for duplicate node
  Merging tags for duplicate node
  Merging tags for duplicate node
  Merging tags for duplicate node
  Merging tags for duplicate node
  Merging tags for duplicate node
  Merging tags for duplicate reverse_way
  Merging tags for duplicate way
  Merging tags for duplicate way
  Merging tags for duplicate way
  Merging tags for duplicate relation
  Splitting long ways
  Writing file header
  Writing nodes
  Writing ways
  Writing relations
  Writing file footer
  $ xmllint --format basic_geometries_duplicate.osm | diff -uNr - $TESTDIR/basic_geometries.xml

multigeometries:
  $ ogr2osm -f $TESTDIR/shapefiles/multi_geometries.kml
  Using default translations
  Preparing to convert .* (re)
  Detected projection metadata:
  GEOGCS["WGS 84",
      DATUM["WGS_1984",
          SPHEROID["WGS 84",6378137,298.257223563,
              AUTHORITY["EPSG","7030"]],
          AUTHORITY["EPSG","6326"]],
      PRIMEM["Greenwich",0,
          AUTHORITY["EPSG","8901"]],
      UNIT["degree",0.0174532925199433,
          AUTHORITY["EPSG","9122"]],
      AXIS["Latitude",NORTH],
      AXIS["Longitude",EAST],
      AUTHORITY["EPSG","4326"]]
  Splitting long ways
  Writing file header
  Writing nodes
  Writing ways
  Writing relations
  Writing file footer
  $ xmllint --format multi_geometries.osm | diff -uNr - $TESTDIR/multi_geometries.xml

multigeometriesduplicate:
  $ ogr2osm -f $TESTDIR/shapefiles/multi_geometries_duplicate.kml
  Using default translations
  Preparing to convert .* (re)
  Detected projection metadata:
  GEOGCS["WGS 84",
      DATUM["WGS_1984",
          SPHEROID["WGS 84",6378137,298.257223563,
              AUTHORITY["EPSG","7030"]],
          AUTHORITY["EPSG","6326"]],
      PRIMEM["Greenwich",0,
          AUTHORITY["EPSG","8901"]],
      UNIT["degree",0.0174532925199433,
          AUTHORITY["EPSG","9122"]],
      AXIS["Latitude",NORTH],
      AXIS["Longitude",EAST],
      AUTHORITY["EPSG","4326"]]
  Splitting long ways
  Writing file header
  Writing nodes
  Writing ways
  Writing relations
  Writing file footer
  $ xmllint --format multi_geometries_duplicate.osm | diff -uNr - $TESTDIR/multi_geometries.xml

collection:
  $ ogr2osm -f $TESTDIR/shapefiles/collection.kml
  Using default translations
  Preparing to convert .* (re)
  Detected projection metadata:
  GEOGCS["WGS 84",
      DATUM["WGS_1984",
          SPHEROID["WGS 84",6378137,298.257223563,
              AUTHORITY["EPSG","7030"]],
          AUTHORITY["EPSG","6326"]],
      PRIMEM["Greenwich",0,
          AUTHORITY["EPSG","8901"]],
      UNIT["degree",0.0174532925199433,
          AUTHORITY["EPSG","9122"]],
      AXIS["Latitude",NORTH],
      AXIS["Longitude",EAST],
      AUTHORITY["EPSG","4326"]]
  Splitting long ways
  Writing file header
  Writing nodes
  Writing ways
  Writing relations
  Writing file footer
  $ xmllint --format collection.osm | diff -uNr - $TESTDIR/collection.xml

collectionduplicate:
  $ ogr2osm -f $TESTDIR/shapefiles/collection_duplicate.kml
  Using default translations
  Preparing to convert .* (re)
  Detected projection metadata:
  GEOGCS["WGS 84",
      DATUM["WGS_1984",
          SPHEROID["WGS 84",6378137,298.257223563,
              AUTHORITY["EPSG","7030"]],
          AUTHORITY["EPSG","6326"]],
      PRIMEM["Greenwich",0,
          AUTHORITY["EPSG","8901"]],
      UNIT["degree",0.0174532925199433,
          AUTHORITY["EPSG","9122"]],
      AXIS["Latitude",NORTH],
      AXIS["Longitude",EAST],
      AUTHORITY["EPSG","4326"]]
  Splitting long ways
  Writing file header
  Writing nodes
  Writing ways
  Writing relations
  Writing file footer
  $ xmllint --format collection_duplicate.osm | diff -uNr - $TESTDIR/collection.xml

positiveid:
  $ ogr2osm -f --positive-id $TESTDIR/shapefiles/basic_geometries.kml
  Using default translations
  Preparing to convert .* (re)
  Detected projection metadata:
  GEOGCS["WGS 84",
      DATUM["WGS_1984",
          SPHEROID["WGS 84",6378137,298.257223563,
              AUTHORITY["EPSG","7030"]],
          AUTHORITY["EPSG","6326"]],
      PRIMEM["Greenwich",0,
          AUTHORITY["EPSG","8901"]],
      UNIT["degree",0.0174532925199433,
          AUTHORITY["EPSG","9122"]],
      AXIS["Latitude",NORTH],
      AXIS["Longitude",EAST],
      AUTHORITY["EPSG","4326"]]
  Splitting long ways
  Writing file header
  Writing nodes
  Writing ways
  Writing relations
  Writing file footer
  $ xmllint --format basic_geometries.osm | diff -uNr - $TESTDIR/positiveid.xml

significantdigits:
  $ ogr2osm -f --significant-digits 5 $TESTDIR/shapefiles/basic_geometries.kml
  Using default translations
  Preparing to convert .* (re)
  Detected projection metadata:
  GEOGCS["WGS 84",
      DATUM["WGS_1984",
          SPHEROID["WGS 84",6378137,298.257223563,
              AUTHORITY["EPSG","7030"]],
          AUTHORITY["EPSG","6326"]],
      PRIMEM["Greenwich",0,
          AUTHORITY["EPSG","8901"]],
      UNIT["degree",0.0174532925199433,
          AUTHORITY["EPSG","9122"]],
      AXIS["Latitude",NORTH],
      AXIS["Longitude",EAST],
      AUTHORITY["EPSG","4326"]]
  Splitting long ways
  Writing file header
  Writing nodes
  Writing ways
  Writing relations
  Writing file footer
  $ xmllint --format basic_geometries.osm | diff -uNr - $TESTDIR/significantdigits.xml

version:
  $ ogr2osm -f --add-version $TESTDIR/shapefiles/basic_geometries.kml
  Using default translations
  Preparing to convert .* (re)
  Detected projection metadata:
  GEOGCS["WGS 84",
      DATUM["WGS_1984",
          SPHEROID["WGS 84",6378137,298.257223563,
              AUTHORITY["EPSG","7030"]],
          AUTHORITY["EPSG","6326"]],
      PRIMEM["Greenwich",0,
          AUTHORITY["EPSG","8901"]],
      UNIT["degree",0.0174532925199433,
          AUTHORITY["EPSG","9122"]],
      AXIS["Latitude",NORTH],
      AXIS["Longitude",EAST],
      AUTHORITY["EPSG","4326"]]
  Splitting long ways
  Writing file header
  Writing nodes
  Writing ways
  Writing relations
  Writing file footer
  $ xmllint --format basic_geometries.osm | diff -uNr - $TESTDIR/version.xml

bounds:
  $ ogr2osm -f --add-bounds $TESTDIR/shapefiles/basic_geometries.kml
  Using default translations
  Preparing to convert .* (re)
  Detected projection metadata:
  GEOGCS["WGS 84",
      DATUM["WGS_1984",
          SPHEROID["WGS 84",6378137,298.257223563,
              AUTHORITY["EPSG","7030"]],
          AUTHORITY["EPSG","6326"]],
      PRIMEM["Greenwich",0,
          AUTHORITY["EPSG","8901"]],
      UNIT["degree",0.0174532925199433,
          AUTHORITY["EPSG","9122"]],
      AXIS["Latitude",NORTH],
      AXIS["Longitude",EAST],
      AUTHORITY["EPSG","4326"]]
  Splitting long ways
  Writing file header
  Writing nodes
  Writing ways
  Writing relations
  Writing file footer
  $ xmllint --format basic_geometries.osm | diff -uNr - $TESTDIR/bounds.xml

timestamp:
  $ ogr2osm -f --add-timestamp $TESTDIR/shapefiles/basic_geometries.kml
  Using default translations
  Preparing to convert .* (re)
  Detected projection metadata:
  GEOGCS["WGS 84",
      DATUM["WGS_1984",
          SPHEROID["WGS 84",6378137,298.257223563,
              AUTHORITY["EPSG","7030"]],
          AUTHORITY["EPSG","6326"]],
      PRIMEM["Greenwich",0,
          AUTHORITY["EPSG","8901"]],
      UNIT["degree",0.0174532925199433,
          AUTHORITY["EPSG","9122"]],
      AXIS["Latitude",NORTH],
      AXIS["Longitude",EAST],
      AUTHORITY["EPSG","4326"]]
  Splitting long ways
  Writing file header
  Writing nodes
  Writing ways
  Writing relations
  Writing file footer
  $ cp basic_geometries.osm $TESTDIR/check_manual_timestamp.osm

duplicatewaynodes:
  $ ogr2osm -f $TESTDIR/shapefiles/duplicate-way-nodes.gml
  Using default translations
  Preparing to convert .* (re)
  Layer has no projection metadata, falling back to EPSG:4326
  Detected projection metadata:
  PROJCS["Amersfoort / RD New",
      GEOGCS["Amersfoort",
          DATUM["Amersfoort",
              SPHEROID["Bessel 1841",6377397.155,299.1528128,
                  AUTHORITY["EPSG","7004"]],
              AUTHORITY["EPSG","6289"]],
          PRIMEM["Greenwich",0,
              AUTHORITY["EPSG","8901"]],
          UNIT["degree",0.0174532925199433,
              AUTHORITY["EPSG","9122"]],
          AUTHORITY["EPSG","4289"]],
      PROJECTION["Oblique_Stereographic"],
      PARAMETER["latitude_of_origin",52.1561605555556],
      PARAMETER["central_meridian",5.38763888888889],
      PARAMETER["scale_factor",0.9999079],
      PARAMETER["false_easting",155000],
      PARAMETER["false_northing",463000],
      UNIT["metre",1,
          AUTHORITY["EPSG","9001"]],
      AXIS["Easting",EAST],
      AXIS["Northing",NORTH],
      AUTHORITY["EPSG","28992"]]
  Unhandled geometry, type 10
  Detected projection metadata:
  PROJCS["Amersfoort / RD New",
      GEOGCS["Amersfoort",
          DATUM["Amersfoort",
              SPHEROID["Bessel 1841",6377397.155,299.1528128,
                  AUTHORITY["EPSG","7004"]],
              AUTHORITY["EPSG","6289"]],
          PRIMEM["Greenwich",0,
              AUTHORITY["EPSG","8901"]],
          UNIT["degree",0.0174532925199433,
              AUTHORITY["EPSG","9122"]],
          AUTHORITY["EPSG","4289"]],
      PROJECTION["Oblique_Stereographic"],
      PARAMETER["latitude_of_origin",52.1561605555556],
      PARAMETER["central_meridian",5.38763888888889],
      PARAMETER["scale_factor",0.9999079],
      PARAMETER["false_easting",155000],
      PARAMETER["false_northing",463000],
      UNIT["metre",1,
          AUTHORITY["EPSG","9001"]],
      AXIS["Easting",EAST],
      AXIS["Northing",NORTH],
      AUTHORITY["EPSG","28992"]]
  Splitting long ways
  Writing file header
  Writing nodes
  Writing ways
  Writing relations
  Writing file footer
  $ xmllint --format duplicate-way-nodes.osm | diff -uNr - $TESTDIR/duplicate-way-nodes.xml

shapefile:
  $ ogr2osm -f $TESTDIR/shapefiles/testshapefile.shp
  Using default translations
  Preparing to convert .* (re)
  Detected projection metadata:
  PROJCS["NAD83 / UTM zone 10N",
      GEOGCS["NAD83",
          DATUM["North_American_Datum_1983",
              SPHEROID["GRS 1980",6378137,298.257222101,
                  AUTHORITY["EPSG","7019"]],
              AUTHORITY["EPSG","6269"]],
          PRIMEM["Greenwich",0,
              AUTHORITY["EPSG","8901"]],
          UNIT["degree",0.0174532925199433,
              AUTHORITY["EPSG","9122"]],
          AUTHORITY["EPSG","4269"]],
      PROJECTION["Transverse_Mercator"],
      PARAMETER["latitude_of_origin",0],
      PARAMETER["central_meridian",-123],
      PARAMETER["scale_factor",0.9996],
      PARAMETER["false_easting",500000],
      PARAMETER["false_northing",0],
      UNIT["metre",1,
          AUTHORITY["EPSG","9001"]],
      AXIS["Easting",EAST],
      AXIS["Northing",NORTH],
      AUTHORITY["EPSG","26910"]]
  Splitting long ways
  Writing file header
  Writing nodes
  Writing ways
  Writing relations
  Writing file footer
  $ xmllint --format testshapefile.osm | diff -uNr - $TESTDIR/testshapefile.xml
