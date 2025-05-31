.class public Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;
.super Lcom/badlogic/gdx/scenes/scene2d/Actor;
.source "Widget.java"

# interfaces
.implements Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;


# instance fields
.field private fillParent:Z

.field private layoutEnabled:Z

.field private needsLayout:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 35
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;-><init>()V

    .line 36
    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;->needsLayout:Z

    .line 38
    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;->layoutEnabled:Z

    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V
    .locals 0
    .param p1, "batch"    # Lcom/badlogic/gdx/graphics/g2d/Batch;
    .param p2, "parentAlpha"    # F

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;->validate()V

    .line 123
    return-void
.end method

.method public getMaxHeight()F
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    return v0
.end method

.method public getMaxWidth()F
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    return v0
.end method

.method public getMinHeight()F
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;->getPrefHeight()F

    move-result v0

    return v0
.end method

.method public getMinWidth()F
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;->getPrefWidth()F

    move-result v0

    return v0
.end method

.method public getPrefHeight()F
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    return v0
.end method

.method public getPrefWidth()F
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    return v0
.end method

.method public invalidate()V
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;->needsLayout:Z

    .line 98
    return-void
.end method

.method public invalidateHierarchy()V
    .locals 2

    .prologue
    .line 101
    iget-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;->layoutEnabled:Z

    if-nez v1, :cond_1

    .line 105
    :cond_0
    :goto_0
    return-void

    .line 102
    :cond_1
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;->invalidate()V

    .line 103
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;->getParent()Lcom/badlogic/gdx/scenes/scene2d/Group;

    move-result-object v0

    .line 104
    .local v0, "parent":Lcom/badlogic/gdx/scenes/scene2d/Group;
    instance-of v1, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;

    .end local v0    # "parent":Lcom/badlogic/gdx/scenes/scene2d/Group;
    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->invalidateHierarchy()V

    goto :goto_0
.end method

.method public layout()V
    .locals 0

    .prologue
    .line 126
    return-void
.end method

.method public needsLayout()Z
    .locals 1

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;->needsLayout:Z

    return v0
.end method

.method public pack()V
    .locals 2

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;->getPrefWidth()F

    move-result v0

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;->getPrefHeight()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;->setSize(FF)V

    .line 113
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;->validate()V

    .line 114
    return-void
.end method

.method public setFillParent(Z)V
    .locals 0
    .param p1, "fillParent"    # Z

    .prologue
    .line 117
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;->fillParent:Z

    .line 118
    return-void
.end method

.method public setLayoutEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;->layoutEnabled:Z

    .line 66
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;->invalidateHierarchy()V

    .line 67
    :cond_0
    return-void
.end method

.method protected sizeChanged()V
    .locals 0

    .prologue
    .line 108
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;->invalidate()V

    .line 109
    return-void
.end method

.method public validate()V
    .locals 5

    .prologue
    .line 70
    iget-boolean v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;->layoutEnabled:Z

    if-nez v4, :cond_1

    .line 89
    :cond_0
    :goto_0
    return-void

    .line 72
    :cond_1
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;->getParent()Lcom/badlogic/gdx/scenes/scene2d/Group;

    move-result-object v0

    .line 73
    .local v0, "parent":Lcom/badlogic/gdx/scenes/scene2d/Group;
    iget-boolean v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;->fillParent:Z

    if-eqz v4, :cond_2

    if-eqz v0, :cond_2

    .line 75
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v3

    .line 76
    .local v3, "stage":Lcom/badlogic/gdx/scenes/scene2d/Stage;
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getRoot()Lcom/badlogic/gdx/scenes/scene2d/Group;

    move-result-object v4

    if-ne v0, v4, :cond_3

    .line 77
    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getWidth()F

    move-result v2

    .line 78
    .local v2, "parentWidth":F
    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getHeight()F

    move-result v1

    .line 83
    .local v1, "parentHeight":F
    :goto_1
    invoke-virtual {p0, v2, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;->setSize(FF)V

    .line 86
    .end local v1    # "parentHeight":F
    .end local v2    # "parentWidth":F
    .end local v3    # "stage":Lcom/badlogic/gdx/scenes/scene2d/Stage;
    :cond_2
    iget-boolean v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;->needsLayout:Z

    if-eqz v4, :cond_0

    .line 87
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;->needsLayout:Z

    .line 88
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Widget;->layout()V

    goto :goto_0

    .line 80
    .restart local v3    # "stage":Lcom/badlogic/gdx/scenes/scene2d/Stage;
    :cond_3
    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->getWidth()F

    move-result v2

    .line 81
    .restart local v2    # "parentWidth":F
    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->getHeight()F

    move-result v1

    .restart local v1    # "parentHeight":F
    goto :goto_1
.end method
