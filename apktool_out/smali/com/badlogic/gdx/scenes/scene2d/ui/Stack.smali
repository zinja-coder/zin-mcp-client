.class public Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;
.super Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;
.source "Stack.java"


# instance fields
.field private maxHeight:F

.field private maxWidth:F

.field private minHeight:F

.field private minWidth:F

.field private prefHeight:F

.field private prefWidth:F

.field private sizeInvalid:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/high16 v1, 0x43160000    # 150.0f

    .line 45
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;-><init>()V

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->sizeInvalid:Z

    .line 46
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->setTransform(Z)V

    .line 47
    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->setWidth(F)V

    .line 48
    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->setHeight(F)V

    .line 49
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->childrenOnly:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    .line 50
    return-void
.end method

.method private computeSize()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 58
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->sizeInvalid:Z

    .line 59
    iput v9, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->prefWidth:F

    .line 60
    iput v9, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->prefHeight:F

    .line 61
    iput v9, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->minWidth:F

    .line 62
    iput v9, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->minHeight:F

    .line 63
    iput v9, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->maxWidth:F

    .line 64
    iput v9, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->maxHeight:F

    .line 65
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->getChildren()Lcom/badlogic/gdx/utils/SnapshotArray;

    move-result-object v3

    .line 66
    .local v3, "children":Lcom/badlogic/gdx/utils/SnapshotArray;, "Lcom/badlogic/gdx/utils/SnapshotArray<Lcom/badlogic/gdx/scenes/scene2d/Actor;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    iget v6, v3, Lcom/badlogic/gdx/utils/SnapshotArray;->size:I

    .local v6, "n":I
    :goto_0
    if-ge v4, v6, :cond_5

    .line 67
    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/utils/SnapshotArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 69
    .local v0, "child":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    instance-of v7, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;

    if-eqz v7, :cond_2

    move-object v5, v0

    .line 70
    check-cast v5, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;

    .line 71
    .local v5, "layout":Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;
    iget v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->prefWidth:F

    invoke-interface {v5}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->getPrefWidth()F

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v7

    iput v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->prefWidth:F

    .line 72
    iget v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->prefHeight:F

    invoke-interface {v5}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->getPrefHeight()F

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v7

    iput v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->prefHeight:F

    .line 73
    iget v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->minWidth:F

    invoke-interface {v5}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->getMinWidth()F

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v7

    iput v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->minWidth:F

    .line 74
    iget v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->minHeight:F

    invoke-interface {v5}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->getMinHeight()F

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v7

    iput v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->minHeight:F

    .line 75
    invoke-interface {v5}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->getMaxWidth()F

    move-result v2

    .line 76
    .local v2, "childMaxWidth":F
    invoke-interface {v5}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->getMaxHeight()F

    move-result v1

    .line 85
    .end local v5    # "layout":Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;
    .local v1, "childMaxHeight":F
    :goto_1
    cmpl-float v7, v2, v9

    if-lez v7, :cond_0

    iget v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->maxWidth:F

    cmpl-float v7, v7, v9

    if-nez v7, :cond_3

    .end local v2    # "childMaxWidth":F
    :goto_2
    iput v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->maxWidth:F

    .line 86
    :cond_0
    cmpl-float v7, v1, v9

    if-lez v7, :cond_1

    iget v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->maxHeight:F

    cmpl-float v7, v7, v9

    if-nez v7, :cond_4

    .end local v1    # "childMaxHeight":F
    :goto_3
    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->maxHeight:F

    .line 66
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 78
    :cond_2
    iget v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->prefWidth:F

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getWidth()F

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v7

    iput v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->prefWidth:F

    .line 79
    iget v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->prefHeight:F

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getHeight()F

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v7

    iput v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->prefHeight:F

    .line 80
    iget v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->minWidth:F

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getWidth()F

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v7

    iput v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->minWidth:F

    .line 81
    iget v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->minHeight:F

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getHeight()F

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v7

    iput v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->minHeight:F

    .line 82
    const/4 v2, 0x0

    .line 83
    .restart local v2    # "childMaxWidth":F
    const/4 v1, 0x0

    .restart local v1    # "childMaxHeight":F
    goto :goto_1

    .line 85
    :cond_3
    iget v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->maxWidth:F

    invoke-static {v7, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    goto :goto_2

    .line 86
    .end local v2    # "childMaxWidth":F
    :cond_4
    iget v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->maxHeight:F

    invoke-static {v7, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    goto :goto_3

    .line 88
    .end local v0    # "child":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .end local v1    # "childMaxHeight":F
    :cond_5
    return-void
.end method


# virtual methods
.method public add(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 0
    .param p1, "actor"    # Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .prologue
    .line 91
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 92
    return-void
.end method

.method public getMaxHeight()F
    .locals 1

    .prologue
    .line 131
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->sizeInvalid:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->computeSize()V

    .line 132
    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->maxHeight:F

    return v0
.end method

.method public getMaxWidth()F
    .locals 1

    .prologue
    .line 126
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->sizeInvalid:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->computeSize()V

    .line 127
    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->maxWidth:F

    return v0
.end method

.method public getMinHeight()F
    .locals 1

    .prologue
    .line 121
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->sizeInvalid:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->computeSize()V

    .line 122
    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->minHeight:F

    return v0
.end method

.method public getMinWidth()F
    .locals 1

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->sizeInvalid:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->computeSize()V

    .line 117
    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->minWidth:F

    return v0
.end method

.method public getPrefHeight()F
    .locals 1

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->sizeInvalid:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->computeSize()V

    .line 112
    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->prefHeight:F

    return v0
.end method

.method public getPrefWidth()F
    .locals 1

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->sizeInvalid:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->computeSize()V

    .line 107
    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->prefWidth:F

    return v0
.end method

.method public invalidate()V
    .locals 1

    .prologue
    .line 53
    invoke-super {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->invalidate()V

    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->sizeInvalid:Z

    .line 55
    return-void
.end method

.method public layout()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 95
    iget-boolean v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->sizeInvalid:Z

    if-eqz v6, :cond_0

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->computeSize()V

    .line 96
    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->getWidth()F

    move-result v5

    .local v5, "width":F
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->getHeight()F

    move-result v2

    .line 97
    .local v2, "height":F
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Stack;->getChildren()Lcom/badlogic/gdx/utils/SnapshotArray;

    move-result-object v1

    .line 98
    .local v1, "children":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/scenes/scene2d/Actor;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    iget v4, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    .local v4, "n":I
    :goto_0
    if-ge v3, v4, :cond_2

    .line 99
    invoke-virtual {v1, v3}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 100
    .local v0, "child":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    invoke-virtual {v0, v7, v7, v5, v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setBounds(FFFF)V

    .line 101
    instance-of v6, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;

    if-eqz v6, :cond_1

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;

    .end local v0    # "child":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->validate()V

    .line 98
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 103
    :cond_2
    return-void
.end method
