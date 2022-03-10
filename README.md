Transcribed Speech Archive Browser
==================================

This is a web-application for browsing an archive of (possibly automatically) transcribed
speech files (e.g., radio shows or lectures).

The application is described in:

Tanel Alumäe and Ahti Kitsik. TSAB - web interface for transcribed speech collections. Interspeech 2011, Firenze, Italy. [PDF](https://phon.ioc.ee/dokuwiki/lib/exe/fetch.php?media=people:tanel:interspeech2011.pdf)

# Command Line

Set variables in script ./tsabcli.sh

```sh
./tsabcli.sh help  
Usage:
  cat-list
  cat-add "CategoryName" [parentCategoryId]
  cat-del CategoryId
  trans-list
  trans-add [path/to/]audio.mp3 [path/to/]transcription.trs CategoryId [Title]
  trans-del TranscriptionId
  crawl path/to/dir
  reindexExiting
  trans-update-trs [path/to/]transcription.trs
```


Demo
----

The system is live at http://bark.phon.ioc.ee/tsab, acting as a front-end for automatically transcribed
Estonian radio shows.

