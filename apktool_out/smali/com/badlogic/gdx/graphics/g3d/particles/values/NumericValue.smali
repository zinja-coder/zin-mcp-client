.class public Lcom/badlogic/gdx/graphics/g3d/particles/values/NumericValue;
.super Lcom/badlogic/gdx/graphics/g3d/particles/values/ParticleValue;
.source "NumericValue.java"


# instance fields
.field private value:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ParticleValue;-><init>()V

    return-void
.end method


# virtual methods
.method public getValue()F
    .locals 1

    .prologue
    .line 12
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/NumericValue;->value:F

    return v0
.end method

.method public load(Lcom/badlogic/gdx/graphics/g3d/particles/values/NumericValue;)V
    .locals 1
    .param p1, "value"    # Lcom/badlogic/gdx/graphics/g3d/particles/values/NumericValue;

    .prologue
    .line 20
    invoke-super {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ParticleValue;->load(Lcom/badlogic/gdx/graphics/g3d/particles/values/ParticleValue;)V

    .line 21
    iget v0, p1, Lcom/badlogic/gdx/graphics/g3d/particles/values/NumericValue;->value:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/NumericValue;->value:F

    .line 22
    return-void
.end method

.method public read(Lcom/badlogic/gdx/utils/Json;Lcom/badlogic/gdx/utils/JsonValue;)V
    .locals 2
    .param p1, "json"    # Lcom/badlogic/gdx/utils/Json;
    .param p2, "jsonData"    # Lcom/badlogic/gdx/utils/JsonValue;

    .prologue
    .line 32
    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ParticleValue;->read(Lcom/badlogic/gdx/utils/Json;Lcom/badlogic/gdx/utils/JsonValue;)V

    .line 33
    const-string v0, "value"

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {p1, v0, v1, p2}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/String;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/NumericValue;->value:F

    .line 34
    return-void
.end method

.method public setValue(F)V
    .locals 0
    .param p1, "value"    # F

    .prologue
    .line 16
    iput p1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/NumericValue;->value:F

    .line 17
    return-void
.end method

.method public write(Lcom/badlogic/gdx/utils/Json;)V
    .locals 2
    .param p1, "json"    # Lcom/badlogic/gdx/utils/Json;

    .prologue
    .line 26
    invoke-super {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ParticleValue;->write(Lcom/badlogic/gdx/utils/Json;)V

    .line 27
    const-string v0, "value"

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/NumericValue;->value:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 28
    return-void
.end method
