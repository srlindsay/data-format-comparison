Experiments to compare data serialization/modeling libraries.

Currently only considering:

 *  Thrift
 *  Protobuf

Thrift
------
For scala code generation, we'll need to use Scrooge.  Scrooge is actively maintained by Twitter, with plugins for Maven and SBT.

The thrift scrooge generation script won't work unless you've built scrooge locally.  Manual generation of scrooge thrift definitions shouldn't be necessary, though -- we'd likely use the sbt plugin for that.


Protobuf
--------
Scala protobuf integrations:

- ScalaBuff (https://github.com/SandroGrzicic/ScalaBuff):  Activity within the last month, seems actively used.
  + sbt-scalabuff (https://github.com/sbt/sbt-scalabuff):  An SBT plugin for scalabuff.  Only compatible with older versions of sbt (0.12, not 0.13.xx).

- sbt-protobuf (https://github.com/sbt/sbt-protobuf):  Maybe just produces java code?  Not clear from the description.  Less activity and fewer committers than ScalaBuff and sbt-scalabuff.

- protobuf-scala (https://code.google.com/p/protobuf-scala/):  Seems dead.  Open issues like 'Message generation broken', which hasn't been updated since 2011.
