.class public Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;
.super Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;
.source "ScaledNumericValue.java"


# instance fields
.field private highMax:F

.field private highMin:F

.field private relative:Z

.field private scaling:[F

.field public timeline:[F


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 10
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;-><init>()V

    .line 11
    new-array v0, v3, [F

    const/high16 v1, 0x3f800000    # 1.0f

    aput v1, v0, v2

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->scaling:[F

    .line 12
    new-array v0, v3, [F

    const/4 v1, 0x0

    aput v1, v0, v2

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->timeline:[F

    .line 14
    iput-boolean v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->relative:Z

    return-void
.end method


# virtual methods
.method public getHighMax()F
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->highMax:F

    return v0
.end method

.method public getHighMin()F
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->highMin:F

    return v0
.end method

.method public getScale(F)F
    .locals 10
    .param p1, "percent"    # F

    .prologue
    .line 71
    const/4 v0, -0x1

    .line 72
    .local v0, "endIndex":I
    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->timeline:[F

    array-length v2, v7

    .line 75
    .local v2, "n":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 76
    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->timeline:[F

    aget v6, v7, v1

    .line 77
    .local v6, "t":F
    cmpl-float v7, v6, p1

    if-lez v7, :cond_1

    .line 78
    move v0, v1

    .line 82
    .end local v6    # "t":F
    :cond_0
    const/4 v7, -0x1

    if-ne v0, v7, :cond_2

    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->scaling:[F

    add-int/lit8 v8, v2, -0x1

    aget v7, v7, v8

    .line 86
    :goto_1
    return v7

    .line 75
    .restart local v6    # "t":F
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 83
    .end local v6    # "t":F
    :cond_2
    add-int/lit8 v3, v0, -0x1

    .line 84
    .local v3, "startIndex":I
    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->scaling:[F

    aget v5, v7, v3

    .line 85
    .local v5, "startValue":F
    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->timeline:[F

    aget v4, v7, v3

    .line 86
    .local v4, "startTime":F
    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->scaling:[F

    aget v7, v7, v0

    sub-float/2addr v7, v5

    sub-float v8, p1, v4

    iget-object v9, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->timeline:[F

    aget v9, v9, v0

    sub-float/2addr v9, v4

    div-float/2addr v8, v9

    mul-float/2addr v7, v8

    add-float/2addr v7, v5

    goto :goto_1
.end method

.method public getScaling()[F
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->scaling:[F

    return-object v0
.end method

.method public getTimeline()[F
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->timeline:[F

    return-object v0
.end method

.method public isRelative()Z
    .locals 1

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->relative:Z

    return v0
.end method

.method public load(Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;)V
    .locals 4
    .param p1, "value"    # Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    .prologue
    const/4 v3, 0x0

    .line 90
    invoke-super {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;->load(Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;)V

    .line 91
    iget v0, p1, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->highMax:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->highMax:F

    .line 92
    iget v0, p1, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->highMin:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->highMin:F

    .line 93
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->scaling:[F

    array-length v0, v0

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->scaling:[F

    .line 94
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->scaling:[F

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->scaling:[F

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->scaling:[F

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 95
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->timeline:[F

    array-length v0, v0

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->timeline:[F

    .line 96
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->timeline:[F

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->timeline:[F

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->timeline:[F

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 97
    iget-boolean v0, p1, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->relative:Z

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->relative:Z

    .line 98
    return-void
.end method

.method public newHighValue()F
    .locals 3

    .prologue
    .line 17
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->highMin:F

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->highMax:F

    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->highMin:F

    sub-float/2addr v1, v2

    invoke-static {}, Lcom/badlogic/gdx/math/MathUtils;->random()F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public read(Lcom/badlogic/gdx/utils/Json;Lcom/badlogic/gdx/utils/JsonValue;)V
    .locals 2
    .param p1, "json"    # Lcom/badlogic/gdx/utils/Json;
    .param p2, "jsonData"    # Lcom/badlogic/gdx/utils/JsonValue;

    .prologue
    .line 112
    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;->read(Lcom/badlogic/gdx/utils/Json;Lcom/badlogic/gdx/utils/JsonValue;)V

    .line 113
    const-string v0, "highMin"

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {p1, v0, v1, p2}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/String;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->highMin:F

    .line 114
    const-string v0, "highMax"

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {p1, v0, v1, p2}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/String;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->highMax:F

    .line 115
    const-string v0, "relative"

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {p1, v0, v1, p2}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/String;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->relative:Z

    .line 116
    const-string v0, "scaling"

    const-class v1, [F

    invoke-virtual {p1, v0, v1, p2}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/String;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->scaling:[F

    .line 117
    const-string v0, "timeline"

    const-class v1, [F

    invoke-virtual {p1, v0, v1, p2}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/String;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->timeline:[F

    .line 118
    return-void
.end method

.method public setHigh(F)V
    .locals 0
    .param p1, "value"    # F

    .prologue
    .line 21
    iput p1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->highMin:F

    .line 22
    iput p1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->highMax:F

    .line 23
    return-void
.end method

.method public setHigh(FF)V
    .locals 0
    .param p1, "min"    # F
    .param p2, "max"    # F

    .prologue
    .line 26
    iput p1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->highMin:F

    .line 27
    iput p2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->highMax:F

    .line 28
    return-void
.end method

.method public setHighMax(F)V
    .locals 0
    .param p1, "highMax"    # F

    .prologue
    .line 43
    iput p1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->highMax:F

    .line 44
    return-void
.end method

.method public setHighMin(F)V
    .locals 0
    .param p1, "highMin"    # F

    .prologue
    .line 35
    iput p1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->highMin:F

    .line 36
    return-void
.end method

.method public setRelative(Z)V
    .locals 0
    .param p1, "relative"    # Z

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->relative:Z

    .line 68
    return-void
.end method

.method public setScaling([F)V
    .locals 0
    .param p1, "values"    # [F

    .prologue
    .line 51
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->scaling:[F

    .line 52
    return-void
.end method

.method public setTimeline([F)V
    .locals 0
    .param p1, "timeline"    # [F

    .prologue
    .line 59
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->timeline:[F

    .line 60
    return-void
.end method

.method public write(Lcom/badlogic/gdx/utils/Json;)V
    .locals 2
    .param p1, "json"    # Lcom/badlogic/gdx/utils/Json;

    .prologue
    .line 102
    invoke-super {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;->write(Lcom/badlogic/gdx/utils/Json;)V

    .line 103
    const-string v0, "highMin"

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->highMin:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 104
    const-string v0, "highMax"

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->highMax:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 105
    const-string v0, "relative"

    iget-boolean v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->relative:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 106
    const-string v0, "scaling"

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->scaling:[F

    invoke-virtual {p1, v0, v1}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 107
    const-string v0, "timeline"

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->timeline:[F

    invoke-virtual {p1, v0, v1}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 108
    return-void
.end method
