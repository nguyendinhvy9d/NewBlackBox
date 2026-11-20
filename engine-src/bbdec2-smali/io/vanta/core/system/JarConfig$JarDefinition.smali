.class public Lio/vanta/core/system/JarConfig$JarDefinition;
.super Ljava/lang/Object;
.source "JarConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/vanta/core/system/JarConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JarDefinition"
.end annotation


# instance fields
.field private final assetName:Ljava/lang/String;

.field private final description:Ljava/lang/String;

.field private final fileName:Ljava/lang/String;

.field private final minSize:J

.field private final required:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Z)V
    .registers 7

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lio/vanta/core/system/JarConfig$JarDefinition;->assetName:Ljava/lang/String;

    .line 18
    iput-object p2, p0, Lio/vanta/core/system/JarConfig$JarDefinition;->fileName:Ljava/lang/String;

    .line 19
    iput-wide p3, p0, Lio/vanta/core/system/JarConfig$JarDefinition;->minSize:J

    .line 20
    iput-object p5, p0, Lio/vanta/core/system/JarConfig$JarDefinition;->description:Ljava/lang/String;

    .line 21
    iput-boolean p6, p0, Lio/vanta/core/system/JarConfig$JarDefinition;->required:Z

    return-void
.end method


# virtual methods
.method public getAssetName()Ljava/lang/String;
    .registers 2

    .line 24
    iget-object v0, p0, Lio/vanta/core/system/JarConfig$JarDefinition;->assetName:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .registers 2

    .line 27
    iget-object v0, p0, Lio/vanta/core/system/JarConfig$JarDefinition;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .registers 2

    .line 25
    iget-object v0, p0, Lio/vanta/core/system/JarConfig$JarDefinition;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getMinSize()J
    .registers 3

    .line 26
    iget-wide v0, p0, Lio/vanta/core/system/JarConfig$JarDefinition;->minSize:J

    return-wide v0
.end method

.method public isRequired()Z
    .registers 2

    .line 28
    iget-boolean v0, p0, Lio/vanta/core/system/JarConfig$JarDefinition;->required:Z

    return v0
.end method
