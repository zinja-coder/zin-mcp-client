.class public Lcom/badlogic/gdx/graphics/g3d/environment/SphericalHarmonics;
.super Ljava/lang/Object;
.source "SphericalHarmonics.java"


# static fields
.field private static final coeff:[F


# instance fields
.field public final data:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const/16 v0, 0x9

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/environment/SphericalHarmonics;->coeff:[F

    return-void

    :array_0
    .array-data 4
        0x3e906ec1
        0x3efa2a2c
        0x3efa2a2c
        0x3efa2a2c
        0x3f8bd89d
        0x3f8bd89d
        0x3f8bd89d
        0x3ea17b0f
        0x3f0bd89d
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/16 v0, 0x1b

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/environment/SphericalHarmonics;->data:[F

    .line 35
    return-void
.end method

.method public constructor <init>([F)V
    .locals 2
    .param p1, "copyFrom"    # [F

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    array-length v0, p1

    const/16 v1, 0x1b

    if-eq v0, v1, :cond_0

    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "Incorrect array size"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :cond_0
    invoke-virtual {p1}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/environment/SphericalHarmonics;->data:[F

    .line 40
    return-void
.end method

.method private static final clamp(F)F
    .locals 3
    .param p0, "v"    # F

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    .line 28
    cmpg-float v2, p0, v0

    if-gez v2, :cond_1

    move p0, v0

    .end local p0    # "v":F
    :cond_0
    :goto_0
    return p0

    .restart local p0    # "v":F
    :cond_1
    cmpl-float v0, p0, v1

    if-lez v0, :cond_0

    move p0, v1

    goto :goto_0
.end method


# virtual methods
.method public set(FFF)Lcom/badlogic/gdx/graphics/g3d/environment/SphericalHarmonics;
    .locals 3
    .param p1, "r"    # F
    .param p2, "g"    # F
    .param p3, "b"    # F

    .prologue
    .line 57
    const/4 v0, 0x0

    .local v0, "idx":I
    :goto_0
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/environment/SphericalHarmonics;->data:[F

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 58
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/environment/SphericalHarmonics;->data:[F

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "idx":I
    .local v1, "idx":I
    aput p1, v2, v0

    .line 59
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/environment/SphericalHarmonics;->data:[F

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "idx":I
    .restart local v0    # "idx":I
    aput p2, v2, v1

    .line 60
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/environment/SphericalHarmonics;->data:[F

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "idx":I
    .restart local v1    # "idx":I
    aput p3, v2, v0

    move v0, v1

    .end local v1    # "idx":I
    .restart local v0    # "idx":I
    goto :goto_0

    .line 62
    :cond_0
    return-object p0
.end method

.method public set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/g3d/environment/SphericalHarmonics;
    .locals 3
    .param p1, "color"    # Lcom/badlogic/gdx/graphics/Color;

    .prologue
    .line 53
    iget v0, p1, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v1, p1, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v2, p1, Lcom/badlogic/gdx/graphics/Color;->b:F

    invoke-virtual {p0, v0, v1, v2}, Lcom/badlogic/gdx/graphics/g3d/environment/SphericalHarmonics;->set(FFF)Lcom/badlogic/gdx/graphics/g3d/environment/SphericalHarmonics;

    move-result-object v0

    return-object v0
.end method

.method public set(Lcom/badlogic/gdx/graphics/g3d/environment/AmbientCubemap;)Lcom/badlogic/gdx/graphics/g3d/environment/SphericalHarmonics;
    .locals 1
    .param p1, "other"    # Lcom/badlogic/gdx/graphics/g3d/environment/AmbientCubemap;

    .prologue
    .line 49
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/environment/AmbientCubemap;->data:[F

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/environment/SphericalHarmonics;->set([F)Lcom/badlogic/gdx/graphics/g3d/environment/SphericalHarmonics;

    move-result-object v0

    return-object v0
.end method

.method public set([F)Lcom/badlogic/gdx/graphics/g3d/environment/SphericalHarmonics;
    .locals 3
    .param p1, "values"    # [F

    .prologue
    .line 43
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/environment/SphericalHarmonics;->data:[F

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 44
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/environment/SphericalHarmonics;->data:[F

    aget v2, p1, v0

    aput v2, v1, v0

    .line 43
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 45
    :cond_0
    return-object p0
.end method
