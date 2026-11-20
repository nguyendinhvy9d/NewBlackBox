.class public Lio/vanta/fake/XjSplitParse;
.super Ljava/lang/Object;
.source "XjSplitParse.java"


# Split-aware package parse: if the base apk's directory also contains split_*.apk
# siblings (dynamic-feature / config splits, e.g. TikTok df_line), parse the whole
# cluster (dir) so AOSP merges every split's manifest components (activities such as
# LineAuthenticationActivity) into the Package. Falls back to the original monolithic
# base-only parse on any failure, so existing apps are never regressed.
.method public static parse(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    new-instance v0, Ljava/io/File;
    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;
    move-result-object v2

    if-eqz v2, :after_scan

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z
    move-result v3
    if-eqz v3, :after_scan

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;
    move-result-object v3
    if-eqz v3, :after_scan

    array-length v4, v3
    const/4 v5, 0x0

    :loop_start
    if-ge v5, v4, :after_scan
    aget-object v6, v3, v5
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;
    move-result-object v6
    const-string v7, "split_"
    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    move-result v7
    if-eqz v7, :loop_next
    const-string v7, ".apk"
    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    move-result v7
    if-eqz v7, :loop_next
    const/4 v1, 0x1
    goto :after_scan
    :loop_next
    add-int/lit8 v5, v5, 0x1
    goto :loop_start

    :after_scan
    if-eqz v1, :monolithic

    :try_start_0
    invoke-static {v2}, Lio/vanta/utils/compat/PackageParserCompat;->createParser(Ljava/io/File;)Landroid/content/pm/PackageParser;
    move-result-object v3
    const/4 v4, 0x0
    invoke-static {v3, v2, v4}, Lio/vanta/utils/compat/PackageParserCompat;->parsePackage(Landroid/content/pm/PackageParser;Ljava/io/File;I)Landroid/content/pm/PackageParser$Package;
    move-result-object v5
    invoke-static {v3, v5, v4}, Lio/vanta/utils/compat/PackageParserCompat;->collectCertificates(Landroid/content/pm/PackageParser;Landroid/content/pm/PackageParser$Package;I)V
    return-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catch_cluster

    :catch_cluster
    move-exception v3

    :monolithic
    invoke-static {v0}, Lio/vanta/utils/compat/PackageParserCompat;->createParser(Ljava/io/File;)Landroid/content/pm/PackageParser;
    move-result-object v3
    const/4 v4, 0x0
    invoke-static {v3, v0, v4}, Lio/vanta/utils/compat/PackageParserCompat;->parsePackage(Landroid/content/pm/PackageParser;Ljava/io/File;I)Landroid/content/pm/PackageParser$Package;
    move-result-object v5
    invoke-static {v3, v5, v4}, Lio/vanta/utils/compat/PackageParserCompat;->collectCertificates(Landroid/content/pm/PackageParser;Landroid/content/pm/PackageParser$Package;I)V
    return-object v5
.end method
