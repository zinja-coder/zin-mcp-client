.class public abstract Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue;
.super Lcom/badlogic/gdx/graphics/g3d/particles/values/SpawnShapeValue;
.source "PrimitiveSpawnShapeValue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue$SpawnSide;
    }
.end annotation


# static fields
.field protected static final TMP_V1:Lcom/badlogic/gdx/math/Vector3;


# instance fields
.field edges:Z

.field protected spawnDepth:F

.field protected spawnDepthDiff:F

.field public spawnDepthValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

.field protected spawnHeight:F

.field protected spawnHeightDiff:F

.field public spawnHeightValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

.field protected spawnWidth:F

.field protected spawnWidthDiff:F

.field public spawnWidthValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue;->TMP_V1:Lcom/badlogic/gdx/math/Vector3;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/particles/values/SpawnShapeValue;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue;->edges:Z

    .line 24
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue;->spawnWidthValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    .line 25
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue;->spawnHeightValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    .line 26
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue;->spawnDepthValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    .line 27
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue;)V
    .locals 1
    .param p1, "value"    # Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/values/SpawnShapeValue;-><init>(Lcom/badlogic/gdx/graphics/g3d/particles/values/SpawnShapeValue;)V

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue;->edges:Z

    .line 31
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue;->spawnWidthValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    .line 32
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue;->spawnHeightValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    .line 33
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue;->spawnDepthValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    .line 34
    return-void
.end method


# virtual methods
.method public getSpawnDepth()Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue;->spawnDepthValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    return-object v0
.end method

.method public getSpawnHeight()Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue;->spawnHeightValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    return-object v0
.end method

.method public getSpawnWidth()Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue;->spawnWidthValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    return-object v0
.end method

.method public isEdges()Z
    .locals 1

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue;->edges:Z

    return v0
.end method

.method public load(Lcom/badlogic/gdx/graphics/g3d/particles/values/ParticleValue;)V
    .locals 3
    .param p1, "value"    # Lcom/badlogic/gdx/graphics/g3d/particles/values/ParticleValue;

    .prologue
    .line 87
    invoke-super {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/values/SpawnShapeValue;->load(Lcom/badlogic/gdx/graphics/g3d/particles/values/ParticleValue;)V

    move-object v0, p1

    .line 88
    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue;

    .line 89
    .local v0, "shape":Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue;
    iget-boolean v1, v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue;->edges:Z

    iput-boolean v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue;->edges:Z

    .line 90
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue;->spawnWidthValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue;->spawnWidthValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->load(Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;)V

    .line 91
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue;->spawnHeightValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue;->spawnHeightValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->load(Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;)V

    .line 92
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue;->spawnDepthValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue;->spawnDepthValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->load(Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;)V

    .line 93
    return-void
.end method

.method public read(Lcom/badlogic/gdx/utils/Json;Lcom/badlogic/gdx/utils/JsonValue;)V
    .locals 2
    .param p1, "json"    # Lcom/badlogic/gdx/utils/Json;
    .param p2, "jsonData"    # Lcom/badlogic/gdx/utils/JsonValue;

    .prologue
    .line 106
    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/particles/values/SpawnShapeValue;->read(Lcom/badlogic/gdx/utils/Json;Lcom/badlogic/gdx/utils/JsonValue;)V

    .line 107
    const-string v0, "spawnWidthValue"

    const-class v1, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    invoke-virtual {p1, v0, v1, p2}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/String;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue;->spawnWidthValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    .line 108
    const-string v0, "spawnHeightValue"

    const-class v1, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    invoke-virtual {p1, v0, v1, p2}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/String;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue;->spawnHeightValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    .line 109
    const-string v0, "spawnDepthValue"

    const-class v1, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    invoke-virtual {p1, v0, v1, p2}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/String;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue;->spawnDepthValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    .line 110
    const-string v0, "edges"

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {p1, v0, v1, p2}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/String;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue;->edges:Z

    .line 111
    return-void
.end method

.method public setActive(Z)V
    .locals 2
    .param p1, "active"    # Z

    .prologue
    const/4 v1, 0x1

    .line 38
    invoke-super {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/values/SpawnShapeValue;->setActive(Z)V

    .line 39
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue;->spawnWidthValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->setActive(Z)V

    .line 40
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue;->spawnHeightValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->setActive(Z)V

    .line 41
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue;->spawnDepthValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->setActive(Z)V

    .line 42
    return-void
.end method

.method public setDimensions(FFF)V
    .locals 1
    .param p1, "width"    # F
    .param p2, "height"    # F
    .param p3, "depth"    # F

    .prologue
    .line 65
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue;->spawnWidthValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->setHigh(F)V

    .line 66
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue;->spawnHeightValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->setHigh(F)V

    .line 67
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue;->spawnDepthValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    invoke-virtual {v0, p3}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->setHigh(F)V

    .line 68
    return-void
.end method

.method public setEdges(Z)V
    .locals 0
    .param p1, "edges"    # Z

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue;->edges:Z

    .line 50
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue;->spawnWidthValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->newLowValue()F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue;->spawnWidth:F

    .line 73
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue;->spawnWidthValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->newHighValue()F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue;->spawnWidthDiff:F

    .line 74
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue;->spawnWidthValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->isRelative()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue;->spawnWidthDiff:F

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue;->spawnWidth:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue;->spawnWidthDiff:F

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue;->spawnHeightValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->newLowValue()F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue;->spawnHeight:F

    .line 77
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue;->spawnHeightValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->newHighValue()F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue;->spawnHeightDiff:F

    .line 78
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue;->spawnHeightValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->isRelative()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue;->spawnHeightDiff:F

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue;->spawnHeight:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue;->spawnHeightDiff:F

    .line 80
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue;->spawnDepthValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->newLowValue()F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue;->spawnDepth:F

    .line 81
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue;->spawnDepthValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->newHighValue()F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue;->spawnDepthDiff:F

    .line 82
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue;->spawnDepthValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;->isRelative()Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue;->spawnDepthDiff:F

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue;->spawnDepth:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue;->spawnDepthDiff:F

    .line 83
    :cond_2
    return-void
.end method

.method public write(Lcom/badlogic/gdx/utils/Json;)V
    .locals 2
    .param p1, "json"    # Lcom/badlogic/gdx/utils/Json;

    .prologue
    .line 97
    invoke-super {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/values/SpawnShapeValue;->write(Lcom/badlogic/gdx/utils/Json;)V

    .line 98
    const-string v0, "spawnWidthValue"

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue;->spawnWidthValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    invoke-virtual {p1, v0, v1}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 99
    const-string v0, "spawnHeightValue"

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue;->spawnHeightValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    invoke-virtual {p1, v0, v1}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 100
    const-string v0, "spawnDepthValue"

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue;->spawnDepthValue:Lcom/badlogic/gdx/graphics/g3d/particles/values/ScaledNumericValue;

    invoke-virtual {p1, v0, v1}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 101
    const-string v0, "edges"

    iget-boolean v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/PrimitiveSpawnShapeValue;->edges:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 102
    return-void
.end method
