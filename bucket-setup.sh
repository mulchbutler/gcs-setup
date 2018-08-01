source $1

for b in "${BUCKETS[@]}"
do
    # will create the bucket if it fails to read it (ie it doesn't exist)
    gsutil ls $b || gsutil mb $b

    for u in "${IDS[@]}"
    do
        gsutil iam ch serviceAccount:${u}:objectViewer,objectCreator,legacyObjectOwner,legacyBucketWriter,legacyBucketReader $b
    done
done