.class public Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;
.super Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;
.source "Tree.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;,
        Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;
    }
.end annotation


# instance fields
.field private clickListener:Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;

.field private foundNode:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

.field iconSpacingLeft:F

.field iconSpacingRight:F

.field indentSpacing:F

.field private leftColumnWidth:F

.field overNode:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

.field padding:F

.field private prefHeight:F

.field private prefWidth:F

.field final rootNodes:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;",
            ">;"
        }
    .end annotation
.end field

.field final selection:Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/scenes/scene2d/utils/Selection",
            "<",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;",
            ">;"
        }
    .end annotation
.end field

.field private sizeInvalid:Z

.field style:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;

.field ySpacing:F


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;)V
    .locals 1
    .param p1, "skin"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;

    .prologue
    .line 50
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;Ljava/lang/String;)V
    .locals 1
    .param p1, "skin"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;
    .param p2, "styleName"    # Ljava/lang/String;

    .prologue
    .line 54
    const-class v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;

    invoke-virtual {p1, p2, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Skin;->get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;)V
    .locals 3
    .param p1, "style"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;

    .prologue
    const/4 v2, 0x1

    const/high16 v1, 0x40000000    # 2.0f

    .line 57
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;-><init>()V

    .line 40
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->rootNodes:Lcom/badlogic/gdx/utils/Array;

    .line 42
    const/high16 v0, 0x40800000    # 4.0f

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->ySpacing:F

    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->iconSpacingLeft:F

    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->iconSpacingRight:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->padding:F

    .line 44
    iput-boolean v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->sizeInvalid:Z

    .line 58
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;

    invoke-direct {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->selection:Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;

    .line 59
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->selection:Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->setActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 60
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->selection:Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->setMultiple(Z)V

    .line 61
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->setStyle(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;)V

    .line 62
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->initialize()V

    .line 63
    return-void
.end method

.method static collapseAll(Lcom/badlogic/gdx/utils/Array;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 380
    .local p0, "nodes":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    iget v1, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 381
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    .line 382
    .local v2, "node":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->setExpanded(Z)V

    .line 383
    iget-object v3, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->children:Lcom/badlogic/gdx/utils/Array;

    invoke-static {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->collapseAll(Lcom/badlogic/gdx/utils/Array;)V

    .line 380
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 385
    .end local v2    # "node":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;
    :cond_0
    return-void
.end method

.method private computeSize()V
    .locals 3

    .prologue
    .line 153
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->sizeInvalid:Z

    .line 154
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;->plus:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->prefWidth:F

    .line 155
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->prefWidth:F

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;

    iget-object v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;->minus:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->prefWidth:F

    .line 156
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->getHeight()F

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->prefHeight:F

    .line 157
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->leftColumnWidth:F

    .line 158
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->rootNodes:Lcom/badlogic/gdx/utils/Array;

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->indentSpacing:F

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->computeSize(Lcom/badlogic/gdx/utils/Array;F)V

    .line 159
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->leftColumnWidth:F

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->iconSpacingLeft:F

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->padding:F

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->leftColumnWidth:F

    .line 160
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->prefWidth:F

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->leftColumnWidth:F

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->padding:F

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->prefWidth:F

    .line 161
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->getHeight()F

    move-result v0

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->prefHeight:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->prefHeight:F

    .line 162
    return-void
.end method

.method private computeSize(Lcom/badlogic/gdx/utils/Array;F)V
    .locals 10
    .param p2, "indent"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;",
            ">;F)V"
        }
    .end annotation

    .prologue
    .line 165
    .local p1, "nodes":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;>;"
    iget v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->ySpacing:F

    .line 166
    .local v7, "ySpacing":F
    iget v8, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->iconSpacingLeft:F

    iget v9, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->iconSpacingRight:F

    add-float v6, v8, v9

    .line 167
    .local v6, "spacing":F
    const/4 v1, 0x0

    .local v1, "i":I
    iget v3, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    .local v3, "n":I
    :goto_0
    if-ge v1, v3, :cond_3

    .line 168
    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    .line 169
    .local v4, "node":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;
    iget v8, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->iconSpacingRight:F

    add-float v5, p2, v8

    .line 170
    .local v5, "rowWidth":F
    iget-object v0, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 171
    .local v0, "actor":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    instance-of v8, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;

    if-eqz v8, :cond_2

    move-object v2, v0

    .line 172
    check-cast v2, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;

    .line 173
    .local v2, "layout":Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;
    invoke-interface {v2}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->getPrefWidth()F

    move-result v8

    add-float/2addr v5, v8

    .line 174
    invoke-interface {v2}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->getPrefHeight()F

    move-result v8

    iput v8, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->height:F

    .line 175
    invoke-interface {v2}, Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;->pack()V

    .line 180
    .end local v2    # "layout":Lcom/badlogic/gdx/scenes/scene2d/utils/Layout;
    :goto_1
    iget-object v8, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->icon:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v8, :cond_0

    .line 181
    iget-object v8, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->icon:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v8}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v8

    add-float/2addr v8, v6

    add-float/2addr v5, v8

    .line 182
    iget v8, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->height:F

    iget-object v9, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->icon:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v9}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(FF)F

    move-result v8

    iput v8, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->height:F

    .line 184
    :cond_0
    iget v8, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->prefWidth:F

    invoke-static {v8, v5}, Ljava/lang/Math;->max(FF)F

    move-result v8

    iput v8, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->prefWidth:F

    .line 185
    iget v8, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->prefHeight:F

    iget v9, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->height:F

    add-float/2addr v9, v7

    sub-float/2addr v8, v9

    iput v8, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->prefHeight:F

    .line 186
    iget-boolean v8, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->expanded:Z

    if-eqz v8, :cond_1

    iget-object v8, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->children:Lcom/badlogic/gdx/utils/Array;

    iget v9, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->indentSpacing:F

    add-float/2addr v9, p2

    invoke-direct {p0, v8, v9}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->computeSize(Lcom/badlogic/gdx/utils/Array;F)V

    .line 167
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 177
    :cond_2
    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getWidth()F

    move-result v8

    add-float/2addr v5, v8

    .line 178
    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getHeight()F

    move-result v8

    iput v8, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->height:F

    goto :goto_1

    .line 188
    .end local v0    # "actor":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .end local v4    # "node":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;
    .end local v5    # "rowWidth":F
    :cond_3
    return-void
.end method

.method private draw(Lcom/badlogic/gdx/graphics/g2d/Batch;Lcom/badlogic/gdx/utils/Array;F)V
    .locals 19
    .param p1, "batch"    # Lcom/badlogic/gdx/graphics/g2d/Batch;
    .param p3, "indent"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/graphics/g2d/Batch;",
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;",
            ">;F)V"
        }
    .end annotation

    .prologue
    .line 220
    .local p2, "nodes":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;

    iget-object v0, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;->plus:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-object/from16 v17, v0

    .local v17, "plus":Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;

    iget-object v14, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;->minus:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    .line 221
    .local v14, "minus":Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->getX()F

    move-result v4

    .local v4, "x":F
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->getY()F

    move-result v18

    .line 222
    .local v18, "y":F
    const/4 v12, 0x0

    .local v12, "i":I
    move-object/from16 v0, p2

    iget v15, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    .local v15, "n":I
    :goto_0
    if-ge v12, v15, :cond_6

    .line 223
    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    .line 224
    .local v16, "node":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;
    move-object/from16 v0, v16

    iget-object v11, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 226
    .local v11, "actor":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->selection:Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;

    iget-object v2, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;->selection:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v2, :cond_3

    .line 227
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;

    iget-object v2, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;->selection:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-virtual {v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getY()F

    move-result v3

    add-float v3, v3, v18

    move-object/from16 v0, p0

    iget v6, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->ySpacing:F

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    sub-float v5, v3, v6

    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->getWidth()F

    move-result v6

    move-object/from16 v0, v16

    iget v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->height:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->ySpacing:F

    add-float/2addr v7, v3

    move-object/from16 v3, p1

    invoke-interface/range {v2 .. v7}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFF)V

    .line 232
    :cond_0
    :goto_1
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->icon:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v2, :cond_1

    .line 233
    invoke-virtual {v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getY()F

    move-result v2

    move-object/from16 v0, v16

    iget v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->height:F

    move-object/from16 v0, v16

    iget-object v6, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->icon:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v6}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v6

    sub-float/2addr v3, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v3, v6

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-float v3, v3

    add-float v13, v2, v3

    .line 234
    .local v13, "iconY":F
    invoke-virtual {v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lcom/badlogic/gdx/graphics/g2d/Batch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 235
    move-object/from16 v0, v16

    iget-object v5, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->icon:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getX()F

    move-result v2

    add-float/2addr v2, v4

    move-object/from16 v0, p0

    iget v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->iconSpacingRight:F

    sub-float/2addr v2, v3

    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->icon:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v3}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v3

    sub-float v7, v2, v3

    add-float v8, v18, v13

    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->icon:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v2}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v9

    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->icon:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v2}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v10

    move-object/from16 v6, p1

    invoke-interface/range {v5 .. v10}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFF)V

    .line 237
    sget-object v2, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lcom/badlogic/gdx/graphics/g2d/Batch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 240
    .end local v13    # "iconY":F
    :cond_1
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->children:Lcom/badlogic/gdx/utils/Array;

    iget v2, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-nez v2, :cond_4

    .line 222
    :cond_2
    :goto_2
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0

    .line 228
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->overNode:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    move-object/from16 v0, v16

    if-ne v0, v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;

    iget-object v2, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;->over:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v2, :cond_0

    .line 229
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;

    iget-object v2, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;->over:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-virtual {v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getY()F

    move-result v3

    add-float v3, v3, v18

    move-object/from16 v0, p0

    iget v6, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->ySpacing:F

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    sub-float v5, v3, v6

    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->getWidth()F

    move-result v6

    move-object/from16 v0, v16

    iget v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->height:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->ySpacing:F

    add-float/2addr v7, v3

    move-object/from16 v3, p1

    invoke-interface/range {v2 .. v7}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFF)V

    goto/16 :goto_1

    .line 242
    :cond_4
    move-object/from16 v0, v16

    iget-boolean v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->expanded:Z

    if-eqz v2, :cond_5

    move-object v5, v14

    .line 243
    .local v5, "expandIcon":Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    :goto_3
    invoke-virtual {v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getY()F

    move-result v2

    move-object/from16 v0, v16

    iget v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->height:F

    invoke-interface {v5}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v6

    sub-float/2addr v3, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v3, v6

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-float v3, v3

    add-float v13, v2, v3

    .line 244
    .restart local v13    # "iconY":F
    add-float v2, v4, p3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->iconSpacingLeft:F

    sub-float v7, v2, v3

    add-float v8, v18, v13

    invoke-interface {v5}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v9

    invoke-interface {v5}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinHeight()F

    move-result v10

    move-object/from16 v6, p1

    invoke-interface/range {v5 .. v10}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFF)V

    .line 245
    move-object/from16 v0, v16

    iget-boolean v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->expanded:Z

    if-eqz v2, :cond_2

    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->children:Lcom/badlogic/gdx/utils/Array;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->indentSpacing:F

    add-float v3, v3, p3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;Lcom/badlogic/gdx/utils/Array;F)V

    goto/16 :goto_2

    .end local v5    # "expandIcon":Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;
    .end local v13    # "iconY":F
    :cond_5
    move-object/from16 v5, v17

    .line 242
    goto :goto_3

    .line 247
    .end local v11    # "actor":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .end local v16    # "node":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;
    :cond_6
    return-void
.end method

.method static expandAll(Lcom/badlogic/gdx/utils/Array;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 392
    .local p0, "nodes":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    iget v1, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 393
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->expandAll()V

    .line 392
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 394
    :cond_0
    return-void
.end method

.method static findExpandedObjects(Lcom/badlogic/gdx/utils/Array;Lcom/badlogic/gdx/utils/Array;)Z
    .locals 5
    .param p1, "objects"    # Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;",
            ">;",
            "Lcom/badlogic/gdx/utils/Array;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 348
    .local p0, "nodes":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;>;"
    const/4 v0, 0x0

    .line 349
    .local v0, "expanded":Z
    const/4 v1, 0x0

    .local v1, "i":I
    iget v2, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    .local v2, "n":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 350
    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    .line 351
    .local v3, "node":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;
    iget-boolean v4, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->expanded:Z

    if-eqz v4, :cond_0

    iget-object v4, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->children:Lcom/badlogic/gdx/utils/Array;

    invoke-static {v4, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->findExpandedObjects(Lcom/badlogic/gdx/utils/Array;Lcom/badlogic/gdx/utils/Array;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->object:Ljava/lang/Object;

    invoke-virtual {p1, v4}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 349
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 353
    .end local v3    # "node":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;
    :cond_1
    return v0
.end method

.method static findNode(Lcom/badlogic/gdx/utils/Array;Ljava/lang/Object;)Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;",
            ">;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;"
        }
    .end annotation

    .prologue
    .line 363
    .local p0, "nodes":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    iget v2, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    .local v2, "n":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 364
    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    .line 365
    .local v3, "node":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;
    iget-object v4, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->object:Ljava/lang/Object;

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 372
    .end local v3    # "node":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;
    :goto_1
    return-object v3

    .line 363
    .restart local v3    # "node":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 367
    .end local v3    # "node":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;
    :cond_1
    const/4 v1, 0x0

    iget v2, p0, Lcom/badlogic/gdx/utils/Array;->size:I

    :goto_2
    if-ge v1, v2, :cond_3

    .line 368
    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    .line 369
    .restart local v3    # "node":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;
    iget-object v4, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->children:Lcom/badlogic/gdx/utils/Array;

    invoke-static {v4, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->findNode(Lcom/badlogic/gdx/utils/Array;Ljava/lang/Object;)Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    move-result-object v0

    .line 370
    .local v0, "found":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;
    if-eqz v0, :cond_2

    move-object v3, v0

    goto :goto_1

    .line 367
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 372
    .end local v0    # "found":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;
    .end local v3    # "node":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;
    :cond_3
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private getNodeAt(Lcom/badlogic/gdx/utils/Array;FF)F
    .locals 6
    .param p2, "y"    # F
    .param p3, "rowY"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;",
            ">;FF)F"
        }
    .end annotation

    .prologue
    .local p1, "nodes":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;>;"
    const/high16 v3, -0x40800000    # -1.0f

    .line 257
    const/4 v0, 0x0

    .local v0, "i":I
    iget v1, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_3

    .line 258
    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    .line 259
    .local v2, "node":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;
    iget v4, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->height:F

    sub-float v4, p3, v4

    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->ySpacing:F

    sub-float/2addr v4, v5

    cmpl-float v4, p2, v4

    if-ltz v4, :cond_1

    cmpg-float v4, p2, p3

    if-gez v4, :cond_1

    .line 260
    iput-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->foundNode:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    .line 269
    .end local v2    # "node":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;
    :cond_0
    :goto_1
    return v3

    .line 263
    .restart local v2    # "node":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;
    :cond_1
    iget v4, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->height:F

    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->ySpacing:F

    add-float/2addr v4, v5

    sub-float/2addr p3, v4

    .line 264
    iget-boolean v4, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->expanded:Z

    if-eqz v4, :cond_2

    .line 265
    iget-object v4, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->children:Lcom/badlogic/gdx/utils/Array;

    invoke-direct {p0, v4, p2, p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->getNodeAt(Lcom/badlogic/gdx/utils/Array;FF)F

    move-result p3

    .line 266
    cmpl-float v4, p3, v3

    if-eqz v4, :cond_0

    .line 257
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v2    # "node":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;
    :cond_3
    move v3, p3

    .line 269
    goto :goto_1
.end method

.method private initialize()V
    .locals 1

    .prologue
    .line 66
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$1;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$1;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->clickListener:Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    .line 106
    return-void
.end method

.method private layout(Lcom/badlogic/gdx/utils/Array;FF)F
    .locals 8
    .param p2, "indent"    # F
    .param p3, "y"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;",
            ">;FF)F"
        }
    .end annotation

    .prologue
    .line 196
    .local p1, "nodes":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;>;"
    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->ySpacing:F

    .line 197
    .local v5, "ySpacing":F
    const/4 v1, 0x0

    .local v1, "i":I
    iget v2, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    .local v2, "n":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 198
    invoke-virtual {p1, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    .line 199
    .local v3, "node":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;
    iget-object v0, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 200
    .local v0, "actor":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    move v4, p2

    .line 201
    .local v4, "x":F
    iget-object v6, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->icon:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v6, :cond_0

    iget-object v6, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->icon:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v6}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v6

    add-float/2addr v4, v6

    .line 202
    :cond_0
    iget v6, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->height:F

    sub-float/2addr p3, v6

    .line 203
    iget-object v6, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v6, v4, p3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    .line 204
    sub-float/2addr p3, v5

    .line 205
    iget-boolean v6, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->expanded:Z

    if-eqz v6, :cond_1

    iget-object v6, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->children:Lcom/badlogic/gdx/utils/Array;

    iget v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->indentSpacing:F

    add-float/2addr v7, p2

    invoke-direct {p0, v6, v7, p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->layout(Lcom/badlogic/gdx/utils/Array;FF)F

    move-result p3

    .line 197
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 207
    .end local v0    # "actor":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .end local v3    # "node":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;
    .end local v4    # "x":F
    :cond_2
    return p3
.end method


# virtual methods
.method public add(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;)V
    .locals 1
    .param p1, "node"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->rootNodes:Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    invoke-virtual {p0, v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->insert(ILcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;)V

    .line 115
    return-void
.end method

.method public clearChildren()V
    .locals 1

    .prologue
    .line 137
    invoke-super {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->clearChildren()V

    .line 138
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->setOverNode(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;)V

    .line 139
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->rootNodes:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 140
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->selection:Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->clear()V

    .line 141
    return-void
.end method

.method public collapseAll()V
    .locals 1

    .prologue
    .line 376
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->rootNodes:Lcom/badlogic/gdx/utils/Array;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->collapseAll(Lcom/badlogic/gdx/utils/Array;)V

    .line 377
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V
    .locals 7
    .param p1, "batch"    # Lcom/badlogic/gdx/graphics/g2d/Batch;
    .param p2, "parentAlpha"    # F

    .prologue
    .line 211
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v6

    .line 212
    .local v6, "color":Lcom/badlogic/gdx/graphics/Color;
    iget v0, v6, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v1, v6, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v2, v6, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v3, v6, Lcom/badlogic/gdx/graphics/Color;->a:F

    mul-float/2addr v3, p2

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/g2d/Batch;->setColor(FFFF)V

    .line 213
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;->background:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->getX()F

    move-result v2

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->getY()F

    move-result v3

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->getWidth()F

    move-result v4

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->getHeight()F

    move-result v5

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFF)V

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->rootNodes:Lcom/badlogic/gdx/utils/Array;

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->leftColumnWidth:F

    invoke-direct {p0, p1, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;Lcom/badlogic/gdx/utils/Array;F)V

    .line 215
    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V

    .line 216
    return-void
.end method

.method public expandAll()V
    .locals 1

    .prologue
    .line 388
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->rootNodes:Lcom/badlogic/gdx/utils/Array;

    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->expandAll(Lcom/badlogic/gdx/utils/Array;)V

    .line 389
    return-void
.end method

.method public findExpandedObjects(Lcom/badlogic/gdx/utils/Array;)V
    .locals 1
    .param p1, "objects"    # Lcom/badlogic/gdx/utils/Array;

    .prologue
    .line 334
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->rootNodes:Lcom/badlogic/gdx/utils/Array;

    invoke-static {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->findExpandedObjects(Lcom/badlogic/gdx/utils/Array;Lcom/badlogic/gdx/utils/Array;)Z

    .line 335
    return-void
.end method

.method public findNode(Ljava/lang/Object;)Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 358
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "object cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 359
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->rootNodes:Lcom/badlogic/gdx/utils/Array;

    invoke-static {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->findNode(Lcom/badlogic/gdx/utils/Array;Ljava/lang/Object;)Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    move-result-object v0

    return-object v0
.end method

.method public getClickListener()Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;
    .locals 1

    .prologue
    .line 398
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->clickListener:Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;

    return-object v0
.end method

.method public getIndentSpacing()F
    .locals 1

    .prologue
    .line 309
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->indentSpacing:F

    return v0
.end method

.method public getNodeAt(F)Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;
    .locals 2
    .param p1, "y"    # F

    .prologue
    .line 251
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->foundNode:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    .line 252
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->rootNodes:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->getHeight()F

    move-result v1

    invoke-direct {p0, v0, p1, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->getNodeAt(Lcom/badlogic/gdx/utils/Array;FF)F

    .line 253
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->foundNode:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    return-object v0
.end method

.method public getNodes()Lcom/badlogic/gdx/utils/Array;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;",
            ">;"
        }
    .end annotation

    .prologue
    .line 144
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->rootNodes:Lcom/badlogic/gdx/utils/Array;

    return-object v0
.end method

.method public getOverNode()Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->overNode:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    return-object v0
.end method

.method public getPrefHeight()F
    .locals 1

    .prologue
    .line 329
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->sizeInvalid:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->computeSize()V

    .line 330
    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->prefHeight:F

    return v0
.end method

.method public getPrefWidth()F
    .locals 1

    .prologue
    .line 324
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->sizeInvalid:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->computeSize()V

    .line 325
    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->prefWidth:F

    return v0
.end method

.method public getRootNodes()Lcom/badlogic/gdx/utils/Array;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;",
            ">;"
        }
    .end annotation

    .prologue
    .line 291
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->rootNodes:Lcom/badlogic/gdx/utils/Array;

    return-object v0
.end method

.method public getSelection()Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/scenes/scene2d/utils/Selection",
            "<",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;",
            ">;"
        }
    .end annotation

    .prologue
    .line 283
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->selection:Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;

    return-object v0
.end method

.method public getStyle()Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;

    return-object v0
.end method

.method public insert(ILcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "node"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    .prologue
    .line 118
    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->remove(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;)V

    .line 119
    const/4 v0, 0x0

    iput-object v0, p2, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->parent:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    .line 120
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->rootNodes:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/utils/Array;->insert(ILjava/lang/Object;)V

    .line 121
    invoke-virtual {p2, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->addToTree(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;)V

    .line 122
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->invalidateHierarchy()V

    .line 123
    return-void
.end method

.method public invalidate()V
    .locals 1

    .prologue
    .line 148
    invoke-super {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/WidgetGroup;->invalidate()V

    .line 149
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->sizeInvalid:Z

    .line 150
    return-void
.end method

.method public layout()V
    .locals 5

    .prologue
    .line 191
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->sizeInvalid:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->computeSize()V

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->rootNodes:Lcom/badlogic/gdx/utils/Array;

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->leftColumnWidth:F

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->indentSpacing:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->iconSpacingRight:F

    add-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->getHeight()F

    move-result v2

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->ySpacing:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    invoke-direct {p0, v0, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->layout(Lcom/badlogic/gdx/utils/Array;FF)F

    .line 193
    return-void
.end method

.method public remove(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;)V
    .locals 2
    .param p1, "node"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    .prologue
    .line 126
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->parent:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->parent:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->remove(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;)V

    .line 133
    :goto_0
    return-void

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->rootNodes:Lcom/badlogic/gdx/utils/Array;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/Array;->removeValue(Ljava/lang/Object;Z)Z

    .line 131
    invoke-virtual {p1, p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->removeFromTree(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;)V

    .line 132
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->invalidateHierarchy()V

    goto :goto_0
.end method

.method public restoreExpandedObjects(Lcom/badlogic/gdx/utils/Array;)V
    .locals 4
    .param p1, "objects"    # Lcom/badlogic/gdx/utils/Array;

    .prologue
    .line 338
    const/4 v0, 0x0

    .local v0, "i":I
    iget v1, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 339
    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->findNode(Ljava/lang/Object;)Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    move-result-object v2

    .line 340
    .local v2, "node":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;
    if-eqz v2, :cond_0

    .line 341
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->setExpanded(Z)V

    .line 342
    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->expandTo()V

    .line 338
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 345
    .end local v2    # "node":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;
    :cond_1
    return-void
.end method

.method selectNodes(Lcom/badlogic/gdx/utils/Array;FF)V
    .locals 4
    .param p2, "low"    # F
    .param p3, "high"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;",
            ">;FF)V"
        }
    .end annotation

    .prologue
    .line 273
    .local p1, "nodes":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    iget v1, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 274
    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    .line 275
    .local v2, "node":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;
    iget-object v3, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getY()F

    move-result v3

    cmpg-float v3, v3, p2

    if-gez v3, :cond_1

    .line 280
    .end local v2    # "node":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;
    :cond_0
    return-void

    .line 276
    .restart local v2    # "node":Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;
    :cond_1
    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->isSelectable()Z

    move-result v3

    if-nez v3, :cond_3

    .line 273
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 277
    :cond_3
    iget-object v3, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getY()F

    move-result v3

    cmpg-float v3, v3, p3

    if-gtz v3, :cond_4

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->selection:Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;

    invoke-virtual {v3, v2}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->add(Ljava/lang/Object;)V

    .line 278
    :cond_4
    iget-boolean v3, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->expanded:Z

    if-eqz v3, :cond_2

    iget-object v3, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;->children:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p0, v3, p2, p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->selectNodes(Lcom/badlogic/gdx/utils/Array;FF)V

    goto :goto_1
.end method

.method public setIconSpacing(FF)V
    .locals 0
    .param p1, "left"    # F
    .param p2, "right"    # F

    .prologue
    .line 319
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->iconSpacingLeft:F

    .line 320
    iput p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->iconSpacingRight:F

    .line 321
    return-void
.end method

.method public setOverNode(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;)V
    .locals 0
    .param p1, "overNode"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    .prologue
    .line 299
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->overNode:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$Node;

    .line 300
    return-void
.end method

.method public setPadding(F)V
    .locals 0
    .param p1, "padding"    # F

    .prologue
    .line 304
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->padding:F

    .line 305
    return-void
.end method

.method public setStyle(Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;)V
    .locals 2
    .param p1, "style"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;

    .line 110
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;->plus:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v0

    iget-object v1, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree$TreeStyle;->minus:Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;

    invoke-interface {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Drawable;->getMinWidth()F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->iconSpacingLeft:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->indentSpacing:F

    .line 111
    return-void
.end method

.method public setYSpacing(F)V
    .locals 0
    .param p1, "ySpacing"    # F

    .prologue
    .line 314
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Tree;->ySpacing:F

    .line 315
    return-void
.end method
