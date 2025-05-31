.class public Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;
.super Lcom/badlogic/gdx/scenes/scene2d/Group;
.source "WidgetGroup.java"

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

    .line 37
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    .line 38
    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->needsLayout:Z

    .line 40
    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->layoutEnabled:Z

    return-void
.end method

.method private setLayoutEnabled(Lcom/badlogic/gdx/scenes/scene2d/Group;Z)V
    .locals 5
    .param p1, "parent"    # Lcom/badlogic/gdx/scenes/scene2d/Group;
    .param p2, "enabled"    # Z

    .prologue
    .line 73
    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->getChildren()Lcom/badlogic/gdx/utils/SnapshotArray;

    move-result-object v1

    .line 74
    .local v1, "children":Lcom/badlogic/gdx/utils/SnapshotArray;, "Lcom/badlogic/gdx/utils/SnapshotArray<Lcom/badlogic/gdx/scenes/scene2d/Actor;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    iget v3, v1, Lcom/badlogic/gdx/utils/SnapshotArray;->size:I

    .local v3, "n":I
    :goto_0
    if-ge v2, v3, :cond_2

    .line 75
    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/SnapshotArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 76
    .local v0, "actor":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    instance-of v4, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;

    if-eqz v4, :cond_1

    .line 77
    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;

    .end local v0    # "actor":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    invoke-interface {v0, p2}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->setLayoutEnabled(Z)V

    .line 74
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 78
    .restart local v0    # "actor":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    :cond_1
    instance-of v4, v0, Lcom/badlogic/gdx/scenes/scene2d/Group;

    if-eqz v4, :cond_0

    .line 79
    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/Group;

    .end local v0    # "actor":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    invoke-direct {p0, v0, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->setLayoutEnabled(Lcom/badlogic/gdx/scenes/scene2d/Group;Z)V

    goto :goto_1

    .line 81
    :cond_2
    return-void
.end method


# virtual methods
.method protected childrenChanged()V
    .locals 0

    .prologue
    .line 125
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->invalidateHierarchy()V

    .line 126
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V
    .locals 0
    .param p1, "batch"    # Lcom/badlogic/gdx/graphics/g2d/Batch;
    .param p2, "parentAlpha"    # F

    .prologue
    .line 153
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->validate()V

    .line 154
    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V

    .line 155
    return-void
.end method

.method public getMaxHeight()F
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    return v0
.end method

.method public getMaxWidth()F
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    return v0
.end method

.method public getMinHeight()F
    .locals 1

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->getPrefHeight()F

    move-result v0

    return v0
.end method

.method public getMinWidth()F
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->getPrefWidth()F

    move-result v0

    return v0
.end method

.method public getPrefHeight()F
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    return v0
.end method

.method public getPrefWidth()F
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    return v0
.end method

.method public invalidate()V
    .locals 1

    .prologue
    .line 115
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->needsLayout:Z

    .line 116
    return-void
.end method

.method public invalidateHierarchy()V
    .locals 2

    .prologue
    .line 119
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->invalidate()V

    .line 120
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->getParent()Lcom/badlogic/gdx/scenes/scene2d/Group;

    move-result-object v0

    .line 121
    .local v0, "parent":Lcom/badlogic/gdx/scenes/scene2d/Group;
    instance-of v1, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;

    .end local v0    # "parent":Lcom/badlogic/gdx/scenes/scene2d/Group;
    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->invalidateHierarchy()V

    .line 122
    :cond_0
    return-void
.end method

.method public layout()V
    .locals 0

    .prologue
    .line 148
    return-void
.end method

.method public needsLayout()Z
    .locals 1

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->needsLayout:Z

    return v0
.end method

.method public pack()V
    .locals 2

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->getPrefWidth()F

    move-result v0

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->getPrefHeight()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->setSize(FF)V

    .line 134
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->validate()V

    .line 137
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->needsLayout:Z

    if-eqz v0, :cond_0

    .line 138
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->getPrefWidth()F

    move-result v0

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->getPrefHeight()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->setSize(FF)V

    .line 139
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->validate()V

    .line 141
    :cond_0
    return-void
.end method

.method public setFillParent(Z)V
    .locals 0
    .param p1, "fillParent"    # Z

    .prologue
    .line 144
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->fillParent:Z

    .line 145
    return-void
.end method

.method public setLayoutEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->layoutEnabled:Z

    if-ne v0, p1, :cond_0

    .line 70
    :goto_0
    return-void

    .line 68
    :cond_0
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->layoutEnabled:Z

    .line 69
    invoke-direct {p0, p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->setLayoutEnabled(Lcom/badlogic/gdx/scenes/scene2d/Group;Z)V

    goto :goto_0
.end method

.method protected sizeChanged()V
    .locals 0

    .prologue
    .line 129
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->invalidate()V

    .line 130
    return-void
.end method

.method public validate()V
    .locals 5

    .prologue
    .line 84
    iget-boolean v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->layoutEnabled:Z

    if-nez v4, :cond_1

    .line 107
    :cond_0
    :goto_0
    return-void

    .line 85
    :cond_1
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->getParent()Lcom/badlogic/gdx/scenes/scene2d/Group;

    move-result-object v0

    .line 86
    .local v0, "parent":Lcom/badlogic/gdx/scenes/scene2d/Group;
    iget-boolean v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->fillParent:Z

    if-eqz v4, :cond_3

    if-eqz v0, :cond_3

    .line 87
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v3

    .line 90
    .local v3, "stage":Lcom/badlogic/gdx/scenes/scene2d/Stage;
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getRoot()Lcom/badlogic/gdx/scenes/scene2d/Group;

    move-result-object v4

    if-ne v0, v4, :cond_4

    .line 91
    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getWidth()F

    move-result v2

    .line 92
    .local v2, "parentWidth":F
    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getHeight()F

    move-result v1

    .line 97
    .local v1, "parentHeight":F
    :goto_1
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->getWidth()F

    move-result v4

    cmpl-float v4, v4, v2

    if-nez v4, :cond_2

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->getHeight()F

    move-result v4

    cmpl-float v4, v4, v1

    if-eqz v4, :cond_3

    .line 98
    :cond_2
    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->setWidth(F)V

    .line 99
    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->setHeight(F)V

    .line 100
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->invalidate()V

    .line 104
    .end local v1    # "parentHeight":F
    .end local v2    # "parentWidth":F
    .end local v3    # "stage":Lcom/badlogic/gdx/scenes/scene2d/Stage;
    :cond_3
    iget-boolean v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->needsLayout:Z

    if-eqz v4, :cond_0

    .line 105
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->needsLayout:Z

    .line 106
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->layout()V

    goto :goto_0

    .line 94
    .restart local v3    # "stage":Lcom/badlogic/gdx/scenes/scene2d/Stage;
    :cond_4
    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->getWidth()F

    move-result v2

    .line 95
    .restart local v2    # "parentWidth":F
    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->getHeight()F

    move-result v1

    .restart local v1    # "parentHeight":F
    goto :goto_1
.end method
