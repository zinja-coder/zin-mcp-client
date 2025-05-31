.class public Lcom/badlogic/gdx/graphics/g3d/particles/values/GradientColorValue;
.super Lcom/badlogic/gdx/graphics/g3d/particles/values/ParticleValue;
.source "GradientColorValue.java"


# static fields
.field private static temp:[F


# instance fields
.field private colors:[F

.field public timeline:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const/4 v0, 0x3

    new-array v0, v0, [F

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/GradientColorValue;->temp:[F

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ParticleValue;-><init>()V

    .line 11
    const/4 v0, 0x3

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/GradientColorValue;->colors:[F

    .line 12
    const/4 v0, 0x1

    new-array v0, v0, [F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v2, v0, v1

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/GradientColorValue;->timeline:[F

    return-void

    .line 11
    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public getColor(F[FI)V
    .locals 14
    .param p1, "percent"    # F
    .param p2, "out"    # [F
    .param p3, "index"    # I

    .prologue
    .line 36
    const/4 v7, 0x0

    .local v7, "startIndex":I
    const/4 v1, -0x1

    .line 37
    .local v1, "endIndex":I
    iget-object v10, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/GradientColorValue;->timeline:[F

    .line 38
    .local v10, "timeline":[F
    array-length v5, v10

    .line 39
    .local v5, "n":I
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_0
    if-ge v4, v5, :cond_0

    .line 40
    aget v9, v10, v4

    .line 41
    .local v9, "t":F
    cmpl-float v11, v9, p1

    if-lez v11, :cond_1

    .line 42
    move v1, v4

    .line 47
    .end local v9    # "t":F
    :cond_0
    aget v8, v10, v7

    .line 48
    .local v8, "startTime":F
    mul-int/lit8 v7, v7, 0x3

    .line 49
    iget-object v11, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/GradientColorValue;->colors:[F

    aget v6, v11, v7

    .line 50
    .local v6, "r1":F
    iget-object v11, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/GradientColorValue;->colors:[F

    add-int/lit8 v12, v7, 0x1

    aget v3, v11, v12

    .line 51
    .local v3, "g1":F
    iget-object v11, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/GradientColorValue;->colors:[F

    add-int/lit8 v12, v7, 0x2

    aget v0, v11, v12

    .line 52
    .local v0, "b1":F
    const/4 v11, -0x1

    if-ne v1, v11, :cond_2

    .line 53
    aput v6, p2, p3

    .line 54
    add-int/lit8 v11, p3, 0x1

    aput v3, p2, v11

    .line 55
    add-int/lit8 v11, p3, 0x2

    aput v0, p2, v11

    .line 63
    :goto_1
    return-void

    .line 45
    .end local v0    # "b1":F
    .end local v3    # "g1":F
    .end local v6    # "r1":F
    .end local v8    # "startTime":F
    .restart local v9    # "t":F
    :cond_1
    move v7, v4

    .line 39
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 58
    .end local v9    # "t":F
    .restart local v0    # "b1":F
    .restart local v3    # "g1":F
    .restart local v6    # "r1":F
    .restart local v8    # "startTime":F
    :cond_2
    sub-float v11, p1, v8

    aget v12, v10, v1

    sub-float/2addr v12, v8

    div-float v2, v11, v12

    .line 59
    .local v2, "factor":F
    mul-int/lit8 v1, v1, 0x3

    .line 60
    iget-object v11, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/GradientColorValue;->colors:[F

    aget v11, v11, v1

    sub-float/2addr v11, v6

    mul-float/2addr v11, v2

    add-float/2addr v11, v6

    aput v11, p2, p3

    .line 61
    add-int/lit8 v11, p3, 0x1

    iget-object v12, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/GradientColorValue;->colors:[F

    add-int/lit8 v13, v1, 0x1

    aget v12, v12, v13

    sub-float/2addr v12, v3

    mul-float/2addr v12, v2

    add-float/2addr v12, v3

    aput v12, p2, v11

    .line 62
    add-int/lit8 v11, p3, 0x2

    iget-object v12, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/GradientColorValue;->colors:[F

    add-int/lit8 v13, v1, 0x2

    aget v12, v12, v13

    sub-float/2addr v12, v0

    mul-float/2addr v12, v2

    add-float/2addr v12, v0

    aput v12, p2, v11

    goto :goto_1
.end method

.method public getColor(F)[F
    .locals 2
    .param p1, "percent"    # F

    .prologue
    .line 31
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/GradientColorValue;->temp:[F

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/badlogic/gdx/graphics/g3d/particles/values/GradientColorValue;->getColor(F[FI)V

    .line 32
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/GradientColorValue;->temp:[F

    return-object v0
.end method

.method public getColors()[F
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/GradientColorValue;->colors:[F

    return-object v0
.end method

.method public getTimeline()[F
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/GradientColorValue;->timeline:[F

    return-object v0
.end method

.method public load(Lcom/badlogic/gdx/graphics/g3d/particles/values/GradientColorValue;)V
    .locals 4
    .param p1, "value"    # Lcom/badlogic/gdx/graphics/g3d/particles/values/GradientColorValue;

    .prologue
    const/4 v3, 0x0

    .line 80
    invoke-super {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ParticleValue;->load(Lcom/badlogic/gdx/graphics/g3d/particles/values/ParticleValue;)V

    .line 81
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/particles/values/GradientColorValue;->colors:[F

    array-length v0, v0

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/GradientColorValue;->colors:[F

    .line 82
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/particles/values/GradientColorValue;->colors:[F

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/GradientColorValue;->colors:[F

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/GradientColorValue;->colors:[F

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 83
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/particles/values/GradientColorValue;->timeline:[F

    array-length v0, v0

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/GradientColorValue;->timeline:[F

    .line 84
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/particles/values/GradientColorValue;->timeline:[F

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/GradientColorValue;->timeline:[F

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/GradientColorValue;->timeline:[F

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 85
    return-void
.end method

.method public read(Lcom/badlogic/gdx/utils/Json;Lcom/badlogic/gdx/utils/JsonValue;)V
    .locals 2
    .param p1, "json"    # Lcom/badlogic/gdx/utils/Json;
    .param p2, "jsonData"    # Lcom/badlogic/gdx/utils/JsonValue;

    .prologue
    .line 74
    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ParticleValue;->read(Lcom/badlogic/gdx/utils/Json;Lcom/badlogic/gdx/utils/JsonValue;)V

    .line 75
    const-string v0, "colors"

    const-class v1, [F

    invoke-virtual {p1, v0, v1, p2}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/String;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/GradientColorValue;->colors:[F

    .line 76
    const-string v0, "timeline"

    const-class v1, [F

    invoke-virtual {p1, v0, v1, p2}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/String;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/GradientColorValue;->timeline:[F

    .line 77
    return-void
.end method

.method public setColors([F)V
    .locals 0
    .param p1, "colors"    # [F

    .prologue
    .line 27
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/GradientColorValue;->colors:[F

    .line 28
    return-void
.end method

.method public setTimeline([F)V
    .locals 0
    .param p1, "timeline"    # [F

    .prologue
    .line 19
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/GradientColorValue;->timeline:[F

    .line 20
    return-void
.end method

.method public write(Lcom/badlogic/gdx/utils/Json;)V
    .locals 2
    .param p1, "json"    # Lcom/badlogic/gdx/utils/Json;

    .prologue
    .line 67
    invoke-super {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ParticleValue;->write(Lcom/badlogic/gdx/utils/Json;)V

    .line 68
    const-string v0, "colors"

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/GradientColorValue;->colors:[F

    invoke-virtual {p1, v0, v1}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 69
    const-string v0, "timeline"

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/GradientColorValue;->timeline:[F

    invoke-virtual {p1, v0, v1}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 70
    return-void
.end method
