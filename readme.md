# Setup Jenkins permissions for Google Cloud Storeage buckets

np-bucket-setup.ini has the id array already setup for the non-prod jenkins accounts.

pr-bucket-setup.ini has the id array already setup for the prod jenkins accounts.

To setup the permissions for a bucket, edit the `BUCKETS` fields in the lcp ini file to contain the bucket you want. You can setup multiple buckets at a time by having a space between the bucket strings.

```ini
BUCKETS=("gs://my-bucket-1/")
```
or
```ini
BUCKETS=("gs:/my-bucket-1/" "gs:/my-bucket-2/" "gs:/my-bucket-3/")
```

To run the setup, just call the bucket-setup.sh script with your ini file as the first parameter
```shell
./bucket-setup.sh pr-bucket-setup.ini
```