.class public Lcom/badlogic/gdx/graphics/g2d/PolygonRegionLoader$PolygonRegionParameters;
.super Lcom/badlogic/gdx/assets/AssetLoaderParameters;
.source "PolygonRegionLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/g2d/PolygonRegionLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PolygonRegionParameters"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/badlogic/gdx/assets/AssetLoaderParameters",
        "<",
        "Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;",
        ">;"
    }
.end annotation


# instance fields
.field public readerBuffer:I

.field public textureExtensions:[Ljava/lang/String;

.field public texturePrefix:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/badlogic/gdx/assets/AssetLoaderParameters;-><init>()V

    .line 44
    const-string v0, "i "

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonRegionLoader$PolygonRegionParameters;->texturePrefix:Ljava/lang/String;

    .line 48
    const/16 v0, 0x400

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonRegionLoader$PolygonRegionParameters;->readerBuffer:I

    .line 51
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "png"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "PNG"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "jpeg"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "JPEG"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "jpg"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "JPG"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "cim"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "CIM"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "etc1"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "ETC1"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "ktx"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "KTX"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "zktx"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "ZKTX"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonRegionLoader$PolygonRegionParameters;->textureExtensions:[Ljava/lang/String;

    return-void
.end method
