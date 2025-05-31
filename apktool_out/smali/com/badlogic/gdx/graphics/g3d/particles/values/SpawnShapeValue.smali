.class public abstract Lcom/badlogic/gdx/graphics/g3d/particles/values/SpawnShapeValue;
.super Lcom/badlogic/gdx/graphics/g3d/particles/values/ParticleValue;
.source "SpawnShapeValue.java"

# interfaces
.implements Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData$Configurable;
.implements Lcom/badlogic/gdx/utils/Json$Serializable;


# instance fields
.field public xOffsetValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;

.field public yOffsetValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;

.field public zOffsetValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ParticleValue;-><init>()V

    .line 16
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/SpawnShapeValue;->xOffsetValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;

    .line 17
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/SpawnShapeValue;->yOffsetValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;

    .line 18
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/SpawnShapeValue;->zOffsetValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;

    .line 19
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/particles/values/SpawnShapeValue;)V
    .locals 0
    .param p1, "spawnShapeValue"    # Lcom/badlogic/gdx/graphics/g3d/particles/values/SpawnShapeValue;

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/particles/values/SpawnShapeValue;-><init>()V

    .line 23
    return-void
.end method


# virtual methods
.method public abstract copy()Lcom/badlogic/gdx/graphics/g3d/particles/values/SpawnShapeValue;
.end method

.method public init()V
    .locals 0

    .prologue
    .line 35
    return-void
.end method

.method public load(Lcom/badlogic/gdx/assets/AssetManager;Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;)V
    .locals 0
    .param p1, "manager"    # Lcom/badlogic/gdx/assets/AssetManager;
    .param p2, "data"    # Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;

    .prologue
    .line 68
    return-void
.end method

.method public load(Lcom/badlogic/gdx/graphics/g3d/particles/values/ParticleValue;)V
    .locals 3
    .param p1, "value"    # Lcom/badlogic/gdx/graphics/g3d/particles/values/ParticleValue;

    .prologue
    .line 40
    invoke-super {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ParticleValue;->load(Lcom/badlogic/gdx/graphics/g3d/particles/values/ParticleValue;)V

    move-object v0, p1

    .line 41
    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/SpawnShapeValue;

    .line 42
    .local v0, "shape":Lcom/badlogic/gdx/graphics/g3d/particles/values/SpawnShapeValue;
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/SpawnShapeValue;->xOffsetValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;

    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/SpawnShapeValue;->xOffsetValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;->load(Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;)V

    .line 43
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/SpawnShapeValue;->yOffsetValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;

    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/SpawnShapeValue;->yOffsetValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;->load(Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;)V

    .line 44
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/SpawnShapeValue;->zOffsetValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;

    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/SpawnShapeValue;->zOffsetValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;->load(Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;)V

    .line 45
    return-void
.end method

.method public read(Lcom/badlogic/gdx/utils/Json;Lcom/badlogic/gdx/utils/JsonValue;)V
    .locals 2
    .param p1, "json"    # Lcom/badlogic/gdx/utils/Json;
    .param p2, "jsonData"    # Lcom/badlogic/gdx/utils/JsonValue;

    .prologue
    .line 59
    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ParticleValue;->read(Lcom/badlogic/gdx/utils/Json;Lcom/badlogic/gdx/utils/JsonValue;)V

    .line 60
    const-string v0, "xOffsetValue"

    const-class v1, Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;

    invoke-virtual {p1, v0, v1, p2}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/String;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/SpawnShapeValue;->xOffsetValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;

    .line 61
    const-string v0, "yOffsetValue"

    const-class v1, Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;

    invoke-virtual {p1, v0, v1, p2}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/String;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/SpawnShapeValue;->yOffsetValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;

    .line 62
    const-string v0, "zOffsetValue"

    const-class v1, Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;

    invoke-virtual {p1, v0, v1, p2}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/String;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/SpawnShapeValue;->zOffsetValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;

    .line 63
    return-void
.end method

.method public save(Lcom/badlogic/gdx/assets/AssetManager;Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;)V
    .locals 0
    .param p1, "manager"    # Lcom/badlogic/gdx/assets/AssetManager;
    .param p2, "data"    # Lcom/badlogic/gdx/graphics/g3d/particles/ResourceData;

    .prologue
    .line 66
    return-void
.end method

.method public final spawn(Lcom/badlogic/gdx/math/Vector3;F)Lcom/badlogic/gdx/math/Vector3;
    .locals 2
    .param p1, "vector"    # Lcom/badlogic/gdx/math/Vector3;
    .param p2, "percent"    # F

    .prologue
    .line 28
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/particles/values/SpawnShapeValue;->spawnAux(Lcom/badlogic/gdx/math/Vector3;F)V

    .line 29
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/SpawnShapeValue;->xOffsetValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;

    iget-boolean v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;->active:Z

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/SpawnShapeValue;->xOffsetValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;->newLowValue()F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    .line 30
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/SpawnShapeValue;->yOffsetValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;

    iget-boolean v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;->active:Z

    if-eqz v0, :cond_1

    iget v0, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/SpawnShapeValue;->yOffsetValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;->newLowValue()F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    .line 31
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/SpawnShapeValue;->zOffsetValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;

    iget-boolean v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;->active:Z

    if-eqz v0, :cond_2

    iget v0, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/SpawnShapeValue;->zOffsetValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;->newLowValue()F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    .line 32
    :cond_2
    return-object p1
.end method

.method public abstract spawnAux(Lcom/badlogic/gdx/math/Vector3;F)V
.end method

.method public start()V
    .locals 0

    .prologue
    .line 36
    return-void
.end method

.method public write(Lcom/badlogic/gdx/utils/Json;)V
    .locals 2
    .param p1, "json"    # Lcom/badlogic/gdx/utils/Json;

    .prologue
    .line 51
    invoke-super {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ParticleValue;->write(Lcom/badlogic/gdx/utils/Json;)V

    .line 52
    const-string v0, "xOffsetValue"

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/SpawnShapeValue;->xOffsetValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;

    invoke-virtual {p1, v0, v1}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 53
    const-string v0, "yOffsetValue"

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/SpawnShapeValue;->yOffsetValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;

    invoke-virtual {p1, v0, v1}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 54
    const-string v0, "zOffsetValue"

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/SpawnShapeValue;->zOffsetValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/RangedNumericValue;

    invoke-virtual {p1, v0, v1}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 55
    return-void
.end method
