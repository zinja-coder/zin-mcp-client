.class public Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;
.super Lcom/badlogic/gdx/graphics/g3d/particles/values/ParticleValue;
.source "RangedNumericValue.java"


# instance fields
.field private lowMax:F

.field private lowMin:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ParticleValue;-><init>()V

    return-void
.end method


# virtual methods
.method public getLowMax()F
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;->lowMax:F

    return v0
.end method

.method public getLowMin()F
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;->lowMin:F

    return v0
.end method

.method public load(Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;)V
    .locals 1
    .param p1, "value"    # Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;

    .prologue
    .line 43
    invoke-super {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ParticleValue;->load(Lcom/badlogic/gdx/graphics/g3d/particles/values/ParticleValue;)V

    .line 44
    iget v0, p1, Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;->lowMax:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;->lowMax:F

    .line 45
    iget v0, p1, Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;->lowMin:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;->lowMin:F

    .line 46
    return-void
.end method

.method public newLowValue()F
    .locals 3

    .prologue
    .line 13
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;->lowMin:F

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;->lowMax:F

    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;->lowMin:F

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
    .line 57
    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ParticleValue;->read(Lcom/badlogic/gdx/utils/Json;Lcom/badlogic/gdx/utils/JsonValue;)V

    .line 58
    const-string v0, "lowMin"

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {p1, v0, v1, p2}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/String;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;->lowMin:F

    .line 59
    const-string v0, "lowMax"

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {p1, v0, v1, p2}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/String;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;->lowMax:F

    .line 60
    return-void
.end method

.method public setLow(F)V
    .locals 0
    .param p1, "value"    # F

    .prologue
    .line 17
    iput p1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;->lowMin:F

    .line 18
    iput p1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;->lowMax:F

    .line 19
    return-void
.end method

.method public setLow(FF)V
    .locals 0
    .param p1, "min"    # F
    .param p2, "max"    # F

    .prologue
    .line 22
    iput p1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;->lowMin:F

    .line 23
    iput p2, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;->lowMax:F

    .line 24
    return-void
.end method

.method public setLowMax(F)V
    .locals 0
    .param p1, "lowMax"    # F

    .prologue
    .line 39
    iput p1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;->lowMax:F

    .line 40
    return-void
.end method

.method public setLowMin(F)V
    .locals 0
    .param p1, "lowMin"    # F

    .prologue
    .line 31
    iput p1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;->lowMin:F

    .line 32
    return-void
.end method

.method public write(Lcom/badlogic/gdx/utils/Json;)V
    .locals 2
    .param p1, "json"    # Lcom/badlogic/gdx/utils/Json;

    .prologue
    .line 50
    invoke-super {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ParticleValue;->write(Lcom/badlogic/gdx/utils/Json;)V

    .line 51
    const-string v0, "lowMin"

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;->lowMin:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 52
    const-string v0, "lowMax"

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;->lowMax:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 53
    return-void
.end method
