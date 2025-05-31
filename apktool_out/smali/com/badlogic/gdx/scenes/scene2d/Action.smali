.class public abstract Lcom/badlogic/gdx/scenes/scene2d/Action;
.super Ljava/lang/Object;
.source "Action.java"

# interfaces
.implements Lcom/badlogic/gdx/utils/Pool$Poolable;


# instance fields
.field protected actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

.field private pool:Lcom/badlogic/gdx/utils/Pool;

.field protected target:Lcom/badlogic/gdx/scenes/scene2d/Actor;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract act(F)Z
.end method

.method public getActor()Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Action;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    return-object v0
.end method

.method public getPool()Lcom/badlogic/gdx/utils/Pool;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Action;->pool:Lcom/badlogic/gdx/utils/Pool;

    return-object v0
.end method

.method public getTarget()Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Action;->target:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    return-object v0
.end method

.method public reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 89
    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Action;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 90
    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Action;->target:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 91
    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Action;->pool:Lcom/badlogic/gdx/utils/Pool;

    .line 92
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Action;->restart()V

    .line 93
    return-void
.end method

.method public restart()V
    .locals 0

    .prologue
    .line 42
    return-void
.end method

.method public setActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 1
    .param p1, "actor"    # Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Action;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 57
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Action;->target:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Action;->setTarget(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 58
    :cond_0
    if-nez p1, :cond_1

    .line 59
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Action;->pool:Lcom/badlogic/gdx/utils/Pool;

    if-eqz v0, :cond_1

    .line 60
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Action;->pool:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/utils/Pool;->free(Ljava/lang/Object;)V

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Action;->pool:Lcom/badlogic/gdx/utils/Pool;

    .line 64
    :cond_1
    return-void
.end method

.method public setPool(Lcom/badlogic/gdx/utils/Pool;)V
    .locals 0
    .param p1, "pool"    # Lcom/badlogic/gdx/utils/Pool;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Action;->pool:Lcom/badlogic/gdx/utils/Pool;

    .line 104
    return-void
.end method

.method public setTarget(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 0
    .param p1, "target"    # Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Action;->target:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 75
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 107
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 108
    .local v1, "name":Ljava/lang/String;
    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 109
    .local v0, "dotIndex":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 110
    :cond_0
    const-string v2, "Action"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x6

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 111
    :cond_1
    return-object v1
.end method
