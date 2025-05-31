.class public Lcom/badlogic/gdx/graphics/g3d/particles/values/ParticleValue;
.super Ljava/lang/Object;
.source "ParticleValue.java"

# interfaces
.implements Lcom/badlogic/gdx/utils/Json$Serializable;


# instance fields
.field public active:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g3d/particles/values/ParticleValue;)V
    .locals 1
    .param p1, "value"    # Lcom/badlogic/gdx/graphics/g3d/particles/values/ParticleValue;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iget-boolean v0, p1, Lcom/badlogic/gdx/graphics/g3d/particles/values/ParticleValue;->active:Z

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ParticleValue;->active:Z

    .line 17
    return-void
.end method


# virtual methods
.method public isActive()Z
    .locals 1

    .prologue
    .line 20
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ParticleValue;->active:Z

    return v0
.end method

.method public load(Lcom/badlogic/gdx/graphics/g3d/particles/values/ParticleValue;)V
    .locals 1
    .param p1, "value"    # Lcom/badlogic/gdx/graphics/g3d/particles/values/ParticleValue;

    .prologue
    .line 28
    iget-boolean v0, p1, Lcom/badlogic/gdx/graphics/g3d/particles/values/ParticleValue;->active:Z

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ParticleValue;->active:Z

    .line 29
    return-void
.end method

.method public read(Lcom/badlogic/gdx/utils/Json;Lcom/badlogic/gdx/utils/JsonValue;)V
    .locals 2
    .param p1, "json"    # Lcom/badlogic/gdx/utils/Json;
    .param p2, "jsonData"    # Lcom/badlogic/gdx/utils/JsonValue;

    .prologue
    .line 38
    const-string v0, "active"

    const-class v1, Ljava/lang/Boolean;

    invoke-virtual {p1, v0, v1, p2}, Lcom/badlogic/gdx/utils/Json;->readValue(Ljava/lang/String;Ljava/lang/Class;Lcom/badlogic/gdx/utils/JsonValue;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ParticleValue;->active:Z

    .line 39
    return-void
.end method

.method public setActive(Z)V
    .locals 0
    .param p1, "active"    # Z

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ParticleValue;->active:Z

    .line 25
    return-void
.end method

.method public write(Lcom/badlogic/gdx/utils/Json;)V
    .locals 2
    .param p1, "json"    # Lcom/badlogic/gdx/utils/Json;

    .prologue
    .line 33
    const-string v0, "active"

    iget-boolean v1, p0, Lcom/badlogic/gdx/graphics/g3d/particles/values/ParticleValue;->active:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/badlogic/gdx/utils/Json;->writeValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 34
    return-void
.end method
