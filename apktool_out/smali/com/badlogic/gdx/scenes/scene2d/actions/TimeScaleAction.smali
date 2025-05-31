.class public Lcom/badlogic/gdx/scenes/scene2d/actions/TimeScaleAction;
.super Lcom/badlogic/gdx/scenes/scene2d/actions/DelegateAction;
.source "TimeScaleAction.java"


# instance fields
.field private scale:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/actions/DelegateAction;-><init>()V

    return-void
.end method


# virtual methods
.method protected delegate(F)Z
    .locals 2
    .param p1, "delta"    # F

    .prologue
    .line 25
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/TimeScaleAction;->action:Lcom/badlogic/gdx/scenes/scene2d/Action;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 26
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/TimeScaleAction;->action:Lcom/badlogic/gdx/scenes/scene2d/Action;

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/TimeScaleAction;->scale:F

    mul-float/2addr v1, p1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Action;->act(F)Z

    move-result v0

    goto :goto_0
.end method

.method public getScale()F
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/TimeScaleAction;->scale:F

    return v0
.end method

.method public setScale(F)V
    .locals 0
    .param p1, "scale"    # F

    .prologue
    .line 34
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/actions/TimeScaleAction;->scale:F

    .line 35
    return-void
.end method
