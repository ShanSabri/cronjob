# cronjob
A workaround to permanently store file under the global scratch file system mounted on the Hoffman2 Cluster


##  $SCRATCH (e.g, `/u/flashscratch/s/ssabri`)

> The global scratch file system is mounted on all nodes of the Hoffman2 Cluster. There is a 2TB per user limit. The system provides an environment variable $SCRATCH which is a unique directory for your login ID’s files on the global scratch file system. Example:

> $SCRATCH/myfile
Files on the global scratch file system which are outside of $SCRATCH directories will be deleted without further notice.

> Because the $SCRATCH file system resides on fast flash-based storage, it is recommended that for performance reasons parallel jobs, especially those with high I/O requirements, write to $SCRATCH.

> Under normal circumstances, files you store in $SCRATCH are allowed to remain there for 14 days. **Any files older than 14 days may be automatically deleted by the system** to guarantee that enough space exists for the creation of new files. However, there may be occasions when even after all files older than 14 days have been deleted, there is still insufficient free space remaining. Under that circumstance, files belonging to those users who are using the preponderance of the disk space in $SCRATCH will be deleted even though they have not been there for 14 days. Files written to $SCRATCH are not backed up.

[ref.](https://www.hoffman2.idre.ucla.edu/data-storage/#SCRATCH)

## Usage

```bash
git clone https://github.com/ShanSabri/cronjob.git
cd cronjob
crontab cron.txt 
crontab -ls
```
