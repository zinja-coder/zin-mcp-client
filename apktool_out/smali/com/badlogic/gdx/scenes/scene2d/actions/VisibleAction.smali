.class public Lcom/badlogic/gdx/scenes/scene2d/actions/VisibleAction;
.super Lcom/badlogic/gdx/scenes/scene2d/Action;
.source "VisibleAction.java"


# instance fields
.field private visible:Z


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
    .line 28
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/VisibleAction;->target:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/VisibleAction;->visible:Z

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setVisible(Z)V

    .line 29
    const/4 v0, 0x1

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/VisibleAction;->visible:Z

    return v0
.end method

.method public setVisible(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/VisibleAction;->visible:Z

    .line 38
    return-void
.end method
