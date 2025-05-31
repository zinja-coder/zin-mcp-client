.class public Lcom/badlogic/gdx/scenes/scene2d/actions/RemoveActorAction;
.super Lcom/badlogic/gdx/scenes/scene2d/Action;
.source "RemoveActorAction.java"


# instance fields
.field private removed:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/Action;-><init>()V

    return-void
.end method


# virtual methods
.method public act(F)Z
    .locals 2
    .param p1, "delta"    # F

    .prologue
    const/4 v1, 0x1

    .line 28
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/RemoveActorAction;->removed:Z

    if-nez v0, :cond_0

    .line 29
    iput-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/RemoveActorAction;->removed:Z

    .line 30
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/RemoveActorAction;->target:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->remove()Z

    .line 32
    :cond_0
    return v1
.end method

.method public restart()V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/RemoveActorAction;->removed:Z

    .line 37
    return-void
.end method
