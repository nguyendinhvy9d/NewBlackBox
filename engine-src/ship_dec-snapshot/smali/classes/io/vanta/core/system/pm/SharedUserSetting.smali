.class public final Lio/vanta/core/system/pm/SharedUserSetting;
.super Ljava/lang/Object;
.source "SharedUserSetting.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lio/vanta/core/system/pm/SharedUserSetting;",
            ">;"
        }
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String; = "SharedUserSetting"

.field public static final sSharedUsers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/vanta/core/system/pm/SharedUserSetting;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field name:Ljava/lang/String;

.field seInfoTargetSdkVersion:I

.field userId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lio/vanta/core/system/pm/SharedUserSetting;->sSharedUsers:Ljava/util/Map;

    .line 125
    new-instance v0, Lio/vanta/core/system/pm/SharedUserSetting$1;

    invoke-direct {v0}, Lio/vanta/core/system/pm/SharedUserSetting$1;-><init>()V

    sput-object v0, Lio/vanta/core/system/pm/SharedUserSetting;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lio/vanta/core/system/pm/SharedUserSetting;->name:Ljava/lang/String;

    return-void
.end method

.method public static loadSharedUsers()V
    .locals 4

    .line 62
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 64
    :try_start_0
    invoke-static {}, Lio/vanta/core/env/BEnvironment;->getSharedUserConf()Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Lio/vanta/utils/FileUtils;->toByteArray(Ljava/io/File;)[B

    move-result-object v1

    if-eqz v1, :cond_2

    .line 65
    array-length v2, v1

    if-nez v2, :cond_0

    goto :goto_0

    .line 72
    :cond_0
    array-length v2, v1

    const/16 v3, 0x64

    if-ge v2, v3, :cond_1

    .line 73
    const-string v1, "SharedUserSetting"

    const-string v2, "Detected old format SharedUserSetting data, clearing for fresh start"

    invoke-static {v1, v2}, Lio/vanta/utils/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    invoke-static {}, Lio/vanta/core/env/BEnvironment;->getSharedUserConf()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 75
    sget-object v1, Lio/vanta/core/system/pm/SharedUserSetting;->sSharedUsers:Ljava/util/Map;

    monitor-enter v1

    .line 76
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 77
    monitor-exit v1

    .line 103
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v2

    .line 77
    :try_start_2
    monitor-exit v1

    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v2

    .line 81
    :cond_1
    array-length v2, v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 82
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 84
    const-class v1, Lio/vanta/core/system/pm/SharedUserSetting;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v1

    .line 85
    sget-object v2, Lio/vanta/core/system/pm/SharedUserSetting;->sSharedUsers:Ljava/util/Map;

    monitor-enter v2

    .line 86
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 87
    invoke-interface {v2, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 88
    monitor-exit v2

    .line 103
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_1
    move-exception v1

    .line 88
    :try_start_5
    monitor-exit v2

    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v1

    .line 103
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :cond_2
    :goto_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_2
    move-exception v1

    goto :goto_1

    .line 93
    :catch_0
    :try_start_7
    invoke-static {}, Lio/vanta/core/env/BEnvironment;->getSharedUserConf()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 99
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catch_1
    :try_start_8
    sget-object v1, Lio/vanta/core/system/pm/SharedUserSetting;->sSharedUsers:Ljava/util/Map;

    monitor-enter v1

    .line 100
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 101
    monitor-exit v1

    .line 103
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_3
    move-exception v2

    .line 101
    :try_start_a
    monitor-exit v1

    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :try_start_b
    throw v2

    .line 103
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :goto_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 104
    throw v1
.end method

.method public static saveSharedUsers()V
    .locals 4

    .line 44
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 46
    new-instance v1, Landroid/util/AtomicFile;

    invoke-static {}, Lio/vanta/core/env/BEnvironment;->getSharedUserConf()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    const/4 v2, 0x0

    .line 48
    :try_start_0
    sget-object v3, Lio/vanta/core/system/pm/SharedUserSetting;->sSharedUsers:Ljava/util/Map;

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 50
    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2

    .line 51
    invoke-static {v0, v2}, Lio/vanta/utils/FileUtils;->writeParcelToOutput(Landroid/os/Parcel;Ljava/io/FileOutputStream;)V

    .line 52
    invoke-virtual {v1, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    .line 57
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v3

    .line 54
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 55
    invoke-virtual {v1, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 57
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :goto_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 58
    throw v1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    .line 120
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/vanta/core/system/pm/SharedUserSetting;->name:Ljava/lang/String;

    .line 121
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lio/vanta/core/system/pm/SharedUserSetting;->userId:I

    .line 122
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lio/vanta/core/system/pm/SharedUserSetting;->seInfoTargetSdkVersion:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SharedUserSetting{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/vanta/core/system/pm/SharedUserSetting;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lio/vanta/core/system/pm/SharedUserSetting;->userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 114
    iget-object p2, p0, Lio/vanta/core/system/pm/SharedUserSetting;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 115
    iget p2, p0, Lio/vanta/core/system/pm/SharedUserSetting;->userId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 116
    iget p2, p0, Lio/vanta/core/system/pm/SharedUserSetting;->seInfoTargetSdkVersion:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
