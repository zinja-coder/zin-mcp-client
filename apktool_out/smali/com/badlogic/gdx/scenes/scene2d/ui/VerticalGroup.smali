.class public Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;
.super Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;
.source "VerticalGroup.java"


# instance fields
.field private align:I

.field private fill:F

.field private padBottom:F

.field private padLeft:F

.field private padRight:F

.field private padTop:F

.field private prefHeight:F

.field private prefWidth:F

.field private reverse:Z

.field private round:Z

.field private sizeInvalid:Z

.field private spacing:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 40
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;-><init>()V

    .line 33
    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->sizeInvalid:Z

    .line 35
    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->round:Z

    .line 41
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->childrenOnly:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    .line 42
    return-void
.end method

.method private computeSize()V
    .locals 8

    .prologue
    .line 50
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->sizeInvalid:Z

    .line 51
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->getChildren()Lcom/badlogic/gdx/utils/SnapshotArray;

    move-result-object v1

    .line 52
    .local v1, "children":Lcom/badlogic/gdx/utils/SnapshotArray;, "Lcom/badlogic/gdx/utils/SnapshotArray<Lcom/badlogic/gdx/scenes/scene2d/Actor;>;"
    iget v4, v1, Lcom/badlogic/gdx/utils/SnapshotArray;->size:I

    .line 53
    .local v4, "n":I
    const/4 v5, 0x0

    iput v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->prefWidth:F

    .line 54
    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->padTop:F

    iget v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->padBottom:F

    add-float/2addr v5, v6

    iget v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->spacing:F

    add-int/lit8 v7, v4, -0x1

    int-to-float v7, v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    iput v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->prefHeight:F

    .line 55
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_1

    .line 56
    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/SnapshotArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 57
    .local v0, "child":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    instance-of v5, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;

    if-eqz v5, :cond_0

    move-object v3, v0

    .line 58
    check-cast v3, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;

    .line 59
    .local v3, "layout":Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;
    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->prefWidth:F

    invoke-interface {v3}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->getPrefWidth()F

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    iput v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->prefWidth:F

    .line 60
    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->prefHeight:F

    invoke-interface {v3}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->getPrefHeight()F

    move-result v6

    add-float/2addr v5, v6

    iput v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->prefHeight:F

    .line 55
    .end local v3    # "layout":Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 62
    :cond_0
    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->prefWidth:F

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getWidth()F

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    iput v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->prefWidth:F

    .line 63
    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->prefHeight:F

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getHeight()F

    move-result v6

    add-float/2addr v5, v6

    iput v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->prefHeight:F

    goto :goto_1

    .line 66
    .end local v0    # "child":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    :cond_1
    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->prefWidth:F

    iget v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->padLeft:F

    iget v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->padRight:F

    add-float/2addr v6, v7

    add-float/2addr v5, v6

    iput v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->prefWidth:F

    .line 67
    iget-boolean v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->round:Z

    if-eqz v5, :cond_2

    .line 68
    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->prefWidth:F

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    int-to-float v5, v5

    iput v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->prefWidth:F

    .line 69
    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->prefHeight:F

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    int-to-float v5, v5

    iput v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->prefHeight:F

    .line 71
    :cond_2
    return-void
.end method


# virtual methods
.method public align(I)Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;
    .locals 0
    .param p1, "align"    # I

    .prologue
    .line 212
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->align:I

    .line 213
    return-object p0
.end method

.method public center()Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;
    .locals 1

    .prologue
    .line 218
    const/4 v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->align:I

    .line 219
    return-object p0
.end method

.method public fill()Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;
    .locals 1

    .prologue
    .line 241
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->fill:F

    .line 242
    return-object p0
.end method

.method public fill(F)Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;
    .locals 0
    .param p1, "fill"    # F

    .prologue
    .line 247
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->fill:F

    .line 248
    return-object p0
.end method

.method public getAlign()I
    .locals 1

    .prologue
    .line 237
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->align:I

    return v0
.end method

.method public getFill()F
    .locals 1

    .prologue
    .line 252
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->fill:F

    return v0
.end method

.method public getPadBottom()F
    .locals 1

    .prologue
    .line 202
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->padBottom:F

    return v0
.end method

.method public getPadLeft()F
    .locals 1

    .prologue
    .line 198
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->padLeft:F

    return v0
.end method

.method public getPadRight()F
    .locals 1

    .prologue
    .line 206
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->padRight:F

    return v0
.end method

.method public getPadTop()F
    .locals 1

    .prologue
    .line 194
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->padTop:F

    return v0
.end method

.method public getPrefHeight()F
    .locals 1

    .prologue
    .line 121
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->sizeInvalid:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->computeSize()V

    .line 122
    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->prefHeight:F

    return v0
.end method

.method public getPrefWidth()F
    .locals 1

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->sizeInvalid:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->computeSize()V

    .line 117
    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->prefWidth:F

    return v0
.end method

.method public getReverse()Z
    .locals 1

    .prologue
    .line 143
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->reverse:Z

    return v0
.end method

.method public getSpace()F
    .locals 1

    .prologue
    .line 153
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->spacing:F

    return v0
.end method

.method public invalidate()V
    .locals 1

    .prologue
    .line 45
    invoke-super {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->invalidate()V

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->sizeInvalid:Z

    .line 47
    return-void
.end method

.method public layout()V
    .locals 24

    .prologue
    .line 74
    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->spacing:F

    move/from16 v16, v0

    .local v16, "spacing":F
    move-object/from16 v0, p0

    iget v13, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->padLeft:F

    .line 75
    .local v13, "padLeft":F
    move-object/from16 v0, p0

    iget v4, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->align:I

    .line 76
    .local v4, "align":I
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->reverse:Z

    .local v14, "reverse":Z
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->round:Z

    .line 78
    .local v15, "round":Z
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->getWidth()F

    move-result v20

    sub-float v20, v20, v13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->padRight:F

    move/from16 v21, v0

    sub-float v7, v20, v21

    .line 79
    .local v7, "groupWidth":F
    if-eqz v14, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->padBottom:F

    move/from16 v19, v0

    .line 80
    .local v19, "y":F
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->getChildren()Lcom/badlogic/gdx/utils/SnapshotArray;

    move-result-object v6

    .line 81
    .local v6, "children":Lcom/badlogic/gdx/utils/SnapshotArray;, "Lcom/badlogic/gdx/utils/SnapshotArray<Lcom/badlogic/gdx/scenes/scene2d/Actor;>;"
    const/4 v9, 0x0

    .local v9, "i":I
    iget v12, v6, Lcom/badlogic/gdx/utils/SnapshotArray;->size:I

    .local v12, "n":I
    :goto_1
    if-ge v9, v12, :cond_a

    .line 82
    invoke-virtual {v6, v9}, Lcom/badlogic/gdx/utils/SnapshotArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 84
    .local v5, "child":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    instance-of v0, v5, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;

    move/from16 v20, v0

    if-eqz v20, :cond_7

    move-object v10, v5

    .line 85
    check-cast v10, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;

    .line 86
    .local v10, "layout":Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->fill:F

    move/from16 v20, v0

    const/16 v21, 0x0

    cmpl-float v20, v20, v21

    if-lez v20, :cond_6

    .line 87
    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->fill:F

    move/from16 v20, v0

    mul-float v17, v7, v20

    .line 90
    .local v17, "width":F
    :goto_2
    invoke-interface {v10}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->getMinWidth()F

    move-result v20

    move/from16 v0, v17

    move/from16 v1, v20

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v17

    .line 91
    invoke-interface {v10}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->getMaxWidth()F

    move-result v11

    .line 92
    .local v11, "maxWidth":F
    const/16 v20, 0x0

    cmpl-float v20, v11, v20

    if-lez v20, :cond_0

    cmpl-float v20, v17, v11

    if-lez v20, :cond_0

    move/from16 v17, v11

    .line 93
    :cond_0
    invoke-interface {v10}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->getPrefHeight()F

    move-result v8

    .line 100
    .end local v10    # "layout":Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;
    .end local v11    # "maxWidth":F
    .local v8, "height":F
    :cond_1
    :goto_3
    move/from16 v18, v13

    .line 101
    .local v18, "x":F
    and-int/lit8 v20, v4, 0x10

    if-eqz v20, :cond_8

    .line 102
    sub-float v20, v7, v17

    add-float v18, v18, v20

    .line 106
    :cond_2
    :goto_4
    if-nez v14, :cond_3

    add-float v20, v8, v16

    sub-float v19, v19, v20

    .line 107
    :cond_3
    if-eqz v15, :cond_9

    .line 108
    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->round(F)I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->round(F)I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->round(F)I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v5, v0, v1, v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setBounds(FFFF)V

    .line 111
    :goto_5
    if-eqz v14, :cond_4

    add-float v20, v8, v16

    add-float v19, v19, v20

    .line 81
    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    .line 79
    .end local v5    # "child":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .end local v6    # "children":Lcom/badlogic/gdx/utils/SnapshotArray;, "Lcom/badlogic/gdx/utils/SnapshotArray<Lcom/badlogic/gdx/scenes/scene2d/Actor;>;"
    .end local v8    # "height":F
    .end local v9    # "i":I
    .end local v12    # "n":I
    .end local v17    # "width":F
    .end local v18    # "x":F
    .end local v19    # "y":F
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->getHeight()F

    move-result v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->padTop:F

    move/from16 v21, v0

    sub-float v20, v20, v21

    add-float v19, v20, v16

    goto/16 :goto_0

    .line 89
    .restart local v5    # "child":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .restart local v6    # "children":Lcom/badlogic/gdx/utils/SnapshotArray;, "Lcom/badlogic/gdx/utils/SnapshotArray<Lcom/badlogic/gdx/scenes/scene2d/Actor;>;"
    .restart local v9    # "i":I
    .restart local v10    # "layout":Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;
    .restart local v12    # "n":I
    .restart local v19    # "y":F
    :cond_6
    invoke-interface {v10}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->getPrefWidth()F

    move-result v20

    move/from16 v0, v20

    invoke-static {v0, v7}, Ljava/lang/Math;->min(FF)F

    move-result v17

    .restart local v17    # "width":F
    goto/16 :goto_2

    .line 95
    .end local v10    # "layout":Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;
    .end local v17    # "width":F
    :cond_7
    invoke-virtual {v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getWidth()F

    move-result v17

    .line 96
    .restart local v17    # "width":F
    invoke-virtual {v5}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getHeight()F

    move-result v8

    .line 97
    .restart local v8    # "height":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->fill:F

    move/from16 v20, v0

    const/16 v21, 0x0

    cmpl-float v20, v20, v21

    if-lez v20, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->fill:F

    move/from16 v20, v0

    mul-float v17, v17, v20

    goto/16 :goto_3

    .line 103
    .restart local v18    # "x":F
    :cond_8
    and-int/lit8 v20, v4, 0x8

    if-nez v20, :cond_2

    .line 104
    sub-float v20, v7, v17

    const/high16 v21, 0x40000000    # 2.0f

    div-float v20, v20, v21

    add-float v18, v18, v20

    goto/16 :goto_4

    .line 110
    :cond_9
    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v17

    invoke-virtual {v5, v0, v1, v2, v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setBounds(FFFF)V

    goto :goto_5

    .line 113
    .end local v5    # "child":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .end local v8    # "height":F
    .end local v17    # "width":F
    .end local v18    # "x":F
    :cond_a
    return-void
.end method

.method public left()Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;
    .locals 1

    .prologue
    .line 224
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->align:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->align:I

    .line 225
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->align:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->align:I

    .line 226
    return-object p0
.end method

.method public pad(F)Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;
    .locals 0
    .param p1, "pad"    # F

    .prologue
    .line 158
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->padTop:F

    .line 159
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->padLeft:F

    .line 160
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->padBottom:F

    .line 161
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->padRight:F

    .line 162
    return-object p0
.end method

.method public pad(FFFF)Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;
    .locals 0
    .param p1, "top"    # F
    .param p2, "left"    # F
    .param p3, "bottom"    # F
    .param p4, "right"    # F

    .prologue
    .line 166
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->padTop:F

    .line 167
    iput p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->padLeft:F

    .line 168
    iput p3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->padBottom:F

    .line 169
    iput p4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->padRight:F

    .line 170
    return-object p0
.end method

.method public padBottom(F)Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;
    .locals 0
    .param p1, "padBottom"    # F

    .prologue
    .line 184
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->padBottom:F

    .line 185
    return-object p0
.end method

.method public padLeft(F)Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;
    .locals 0
    .param p1, "padLeft"    # F

    .prologue
    .line 179
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->padLeft:F

    .line 180
    return-object p0
.end method

.method public padRight(F)Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;
    .locals 0
    .param p1, "padRight"    # F

    .prologue
    .line 189
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->padRight:F

    .line 190
    return-object p0
.end method

.method public padTop(F)Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;
    .locals 0
    .param p1, "padTop"    # F

    .prologue
    .line 174
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->padTop:F

    .line 175
    return-object p0
.end method

.method public reverse()Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;
    .locals 1

    .prologue
    .line 132
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->reverse(Z)Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;

    .line 133
    return-object p0
.end method

.method public reverse(Z)Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;
    .locals 0
    .param p1, "reverse"    # Z

    .prologue
    .line 138
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->reverse:Z

    .line 139
    return-object p0
.end method

.method public right()Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;
    .locals 1

    .prologue
    .line 231
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->align:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->align:I

    .line 232
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->align:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->align:I

    .line 233
    return-object p0
.end method

.method public setRound(Z)V
    .locals 0
    .param p1, "round"    # Z

    .prologue
    .line 127
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->round:Z

    .line 128
    return-void
.end method

.method public space(F)Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;
    .locals 0
    .param p1, "spacing"    # F

    .prologue
    .line 148
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/VerticalGroup;->spacing:F

    .line 149
    return-object p0
.end method
