.class public abstract Lcom/badlogic/gdx/graphics/g3d/particles/emitters/Emitter;
.super Lcom/badlogic/gdx/graphics/g3d/particles/ParticleControllerComponent;
.source "Emitter.java"

# interfaces
.implements Lcom/badlogic/gdx/utils/Json$Serializable;


# instance fields
.field public maxParticleCount:I

.field public minParticleCount:I

.field public percent:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleControllerComponent;-><init>()V

    .line 14
    const/4 v0, 0x4

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/Emitter;->maxParticleCount:I

    .line 24
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/particles/emitters/Emitter;)V
    .locals 1
    .param p1, "regularEmitter"    # Lcom/badlogic/gdx/graphics/g3d/particles/emitters/Emitter;

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleControllerComponent;-><init>()V

    .line 14
    const/4 v0, 0x4

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/Emitter;->maxParticleCount:I

    .line 21
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/Emitter;->set(Lcom/badlogic/gdx/graphics/g3d/particles/emitters/Emitter;)V

    .line 22
    return-void
.end method


# virtual methods
.method public end()V
    .locals 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/Emitter;->controller:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->particles:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    const/4 v1, 0x0

    iput v1, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->size:I

    .line 34
    return-void
.end method

.method public getMaxParticleCount()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/Emitter;->maxParticleCount:I

    return v0
.end method

.method public getMinParticleCount()I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/Emitter;->minParticleCount:I

    return v0
.end method

.method public init()V
    .locals 2

    .prologue
    .line 28
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/Emitter;->controller:Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParticleController;->particles:Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;

    const/4 v1, 0x0

    iput v1, v0, Lcom/badlogic/gdx/graphics/g3d/particles/ParallelArray;->size:I

    .line 29
    return-void
.end method

.method public read(Lcom/badlogic/gdx/utils/Json;Lcom/badlogic/gdx/utils/JsonValue;)V
    .locals 2
    .param p1, "json"    # Lcom/badlogic/gdx/utils/Json;
    .param p2, "jsonData"    # Lcom/badlogic/gdx/utils/JsonValue;

    .prologue
    .line 70
    const-string v0, "minParticleCount"

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {p1, v0, v1, p2}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/String;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/Emitter;->minParticleCount:I

    .line 71
    const-string v0, "maxParticleCount"

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {p1, v0, v1, p2}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/String;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/Emitter;->maxParticleCount:I

    .line 72
    return-void
.end method

.method public set(Lcom/badlogic/gdx/graphics/g3d/particles/emitters/Emitter;)V
    .locals 1
    .param p1, "emitter"    # Lcom/badlogic/gdx/graphics/g3d/particles/emitters/Emitter;

    .prologue
    .line 58
    iget v0, p1, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/Emitter;->minParticleCount:I

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/Emitter;->minParticleCount:I

    .line 59
    iget v0, p1, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/Emitter;->maxParticleCount:I

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/Emitter;->maxParticleCount:I

    .line 60
    return-void
.end method

.method public setMaxParticleCount(I)V
    .locals 0
    .param p1, "maxParticleCount"    # I

    .prologue
    .line 49
    iput p1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/Emitter;->maxParticleCount:I

    .line 50
    return-void
.end method

.method public setMinParticleCount(I)V
    .locals 0
    .param p1, "minParticleCount"    # I

    .prologue
    .line 41
    iput p1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/Emitter;->minParticleCount:I

    .line 42
    return-void
.end method

.method public setParticleCount(II)V
    .locals 0
    .param p1, "aMin"    # I
    .param p2, "aMax"    # I

    .prologue
    .line 53
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/Emitter;->setMinParticleCount(I)V

    .line 54
    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/Emitter;->setMaxParticleCount(I)V

    .line 55
    return-void
.end method

.method public write(Lcom/badlogic/gdx/utils/Json;)V
    .locals 2
    .param p1, "json"    # Lcom/badlogic/gdx/utils/Json;

    .prologue
    .line 64
    const-string v0, "minParticleCount"

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/Emitter;->minParticleCount:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 65
    const-string v0, "maxParticleCount"

    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/emitters/Emitter;->maxParticleCount:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 66
    return-void
.end method
