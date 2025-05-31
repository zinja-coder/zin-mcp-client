.class public Lcom/badlogic/gdx/scenes/scene2d/Actor;
.super Ljava/lang/Object;
.source "Actor.java"


# instance fields
.field private final actions:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/scenes/scene2d/Action;",
            ">;"
        }
    .end annotation
.end field

.field private final captureListeners:Lcom/badlogic/gdx/utils/DelayedRemovalArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/DelayedRemovalArray",
            "<",
            "Lcom/badlogic/gdx/scenes/scene2d/EventListener;",
            ">;"
        }
    .end annotation
.end field

.field final color:Lcom/badlogic/gdx/graphics/Color;

.field private debug:Z

.field height:F

.field private final listeners:Lcom/badlogic/gdx/utils/DelayedRemovalArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/DelayedRemovalArray",
            "<",
            "Lcom/badlogic/gdx/scenes/scene2d/EventListener;",
            ">;"
        }
    .end annotation
.end field

.field private name:Ljava/lang/String;

.field originX:F

.field originY:F

.field parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

.field rotation:F

.field scaleX:F

.field scaleY:F

.field private stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

.field private touchable:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

.field private userObject:Ljava/lang/Object;

.field private visible:Z

.field width:F

.field x:F

.field y:F


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-direct {v0, v2}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->listeners:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    .line 60
    new-instance v0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-direct {v0, v2}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->captureListeners:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    .line 61
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0, v2}, Lcom/badlogic/gdx/utils/Array;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->actions:Lcom/badlogic/gdx/utils/Array;

    .line 64
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->enabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->touchable:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->visible:Z

    .line 69
    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->scaleX:F

    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->scaleY:F

    .line 71
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->color:Lcom/badlogic/gdx/graphics/Color;

    return-void
.end method


# virtual methods
.method public act(F)V
    .locals 6
    .param p1, "delta"    # F

    .prologue
    .line 90
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->actions:Lcom/badlogic/gdx/utils/Array;

    .line 91
    .local v2, "actions":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/scenes/scene2d/Action;>;"
    iget v5, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lez v5, :cond_3

    .line 92
    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    invoke-virtual {v5}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getActionsRequestRendering()Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v5}, Lcom/badlogic/gdx/Graphics;->requestRendering()V

    .line 93
    :cond_0
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget v5, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v4, v5, :cond_3

    .line 94
    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/Action;

    .line 95
    .local v0, "action":Lcom/badlogic/gdx/scenes/scene2d/Action;
    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Action;->act(F)Z

    move-result v5

    if-eqz v5, :cond_1

    iget v5, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v4, v5, :cond_1

    .line 96
    invoke-virtual {v2, v4}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/scenes/scene2d/Action;

    .line 97
    .local v3, "current":Lcom/badlogic/gdx/scenes/scene2d/Action;
    if-ne v3, v0, :cond_2

    move v1, v4

    .line 98
    .local v1, "actionIndex":I
    :goto_1
    const/4 v5, -0x1

    if-eq v1, v5, :cond_1

    .line 99
    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/Array;->removeIndex(I)Ljava/lang/Object;

    .line 100
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/scenes/scene2d/Action;->setActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 101
    add-int/lit8 v4, v4, -0x1

    .line 93
    .end local v1    # "actionIndex":I
    .end local v3    # "current":Lcom/badlogic/gdx/scenes/scene2d/Action;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 97
    .restart local v3    # "current":Lcom/badlogic/gdx/scenes/scene2d/Action;
    :cond_2
    const/4 v5, 0x1

    invoke-virtual {v2, v0, v5}, Lcom/badlogic/gdx/utils/Array;->indexOf(Ljava/lang/Object;Z)I

    move-result v1

    goto :goto_1

    .line 106
    .end local v0    # "action":Lcom/badlogic/gdx/scenes/scene2d/Action;
    .end local v3    # "current":Lcom/badlogic/gdx/scenes/scene2d/Action;
    .end local v4    # "i":I
    :cond_3
    return-void
.end method

.method public addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V
    .locals 1
    .param p1, "action"    # Lcom/badlogic/gdx/scenes/scene2d/Action;

    .prologue
    .line 256
    invoke-virtual {p1, p0}, Lcom/badlogic/gdx/scenes/scene2d/Action;->setActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 257
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->actions:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 259
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getActionsRequestRendering()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->requestRendering()V

    .line 260
    :cond_0
    return-void
.end method

.method public addCaptureListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z
    .locals 2
    .param p1, "listener"    # Lcom/badlogic/gdx/scenes/scene2d/EventListener;

    .prologue
    const/4 v1, 0x1

    .line 243
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->captureListeners:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->contains(Ljava/lang/Object;Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->captureListeners:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->add(Ljava/lang/Object;)V

    .line 244
    :cond_0
    return v1
.end method

.method public addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z
    .locals 2
    .param p1, "listener"    # Lcom/badlogic/gdx/scenes/scene2d/EventListener;

    .prologue
    const/4 v0, 0x1

    .line 225
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->listeners:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v1, p1, v0}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->contains(Ljava/lang/Object;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 226
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->listeners:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->add(Ljava/lang/Object;)V

    .line 229
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public clear()V
    .locals 0

    .prologue
    .line 285
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->clearActions()V

    .line 286
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->clearListeners()V

    .line 287
    return-void
.end method

.method public clearActions()V
    .locals 3

    .prologue
    .line 272
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->actions:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 273
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->actions:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/scenes/scene2d/Action;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Action;->setActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 272
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 274
    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->actions:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 275
    return-void
.end method

.method public clearListeners()V
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->listeners:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->clear()V

    .line 280
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->captureListeners:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->clear()V

    .line 281
    return-void
.end method

.method public clipBegin()Z
    .locals 4

    .prologue
    .line 678
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->x:F

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->y:F

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->width:F

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->height:F

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->clipBegin(FFFF)Z

    move-result v0

    return v0
.end method

.method public clipBegin(FFFF)Z
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "width"    # F
    .param p4, "height"    # F

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 687
    cmpg-float v4, p3, v5

    if-lez v4, :cond_0

    cmpg-float v4, p4, v5

    if-gtz v4, :cond_1

    .line 698
    :cond_0
    :goto_0
    return v3

    .line 688
    :cond_1
    sget-object v2, Lcom/badlogic/gdx/math/Rectangle;->tmp:Lcom/badlogic/gdx/math/Rectangle;

    .line 689
    .local v2, "tableBounds":Lcom/badlogic/gdx/math/Rectangle;
    iput p1, v2, Lcom/badlogic/gdx/math/Rectangle;->x:F

    .line 690
    iput p2, v2, Lcom/badlogic/gdx/math/Rectangle;->y:F

    .line 691
    iput p3, v2, Lcom/badlogic/gdx/math/Rectangle;->width:F

    .line 692
    iput p4, v2, Lcom/badlogic/gdx/math/Rectangle;->height:F

    .line 693
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    .line 694
    .local v1, "stage":Lcom/badlogic/gdx/scenes/scene2d/Stage;
    const-class v4, Lcom/badlogic/gdx/math/Rectangle;

    invoke-static {v4}, Lcom/badlogic/gdx/utils/Pools;->obtain(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/math/Rectangle;

    .line 695
    .local v0, "scissorBounds":Lcom/badlogic/gdx/math/Rectangle;
    invoke-virtual {v1, v2, v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->calculateScissors(Lcom/badlogic/gdx/math/Rectangle;Lcom/badlogic/gdx/math/Rectangle;)V

    .line 696
    invoke-static {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->pushScissors(Lcom/badlogic/gdx/math/Rectangle;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    .line 697
    :cond_2
    invoke-static {v0}, Lcom/badlogic/gdx/utils/Pools;->free(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public clipEnd()V
    .locals 1

    .prologue
    .line 703
    invoke-static {}, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->popScissors()Lcom/badlogic/gdx/math/Rectangle;

    move-result-object v0

    invoke-static {v0}, Lcom/badlogic/gdx/utils/Pools;->free(Ljava/lang/Object;)V

    .line 704
    return-void
.end method

.method public debug()Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 1

    .prologue
    .line 822
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setDebug(Z)V

    .line 823
    return-object p0
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V
    .locals 0
    .param p1, "batch"    # Lcom/badlogic/gdx/graphics/g2d/Batch;
    .param p2, "parentAlpha"    # F

    .prologue
    .line 83
    return-void
.end method

.method public drawDebug(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;)V
    .locals 0
    .param p1, "shapes"    # Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;

    .prologue
    .line 799
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->drawDebugBounds(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;)V

    .line 800
    return-void
.end method

.method protected drawDebugBounds(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;)V
    .locals 10
    .param p1, "shapes"    # Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    .line 804
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->debug:Z

    if-nez v0, :cond_0

    .line 808
    :goto_0
    return-void

    .line 805
    :cond_0
    sget-object v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->Line:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->set(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;)V

    .line 806
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getDebugColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 807
    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->x:F

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->y:F

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->originX:F

    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->originY:F

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->width:F

    sub-float v5, v0, v6

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->height:F

    sub-float v6, v0, v6

    iget v7, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->scaleX:F

    iget v8, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->scaleY:F

    iget v9, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->rotation:F

    move-object v0, p1

    invoke-virtual/range {v0 .. v9}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->rect(FFFFFFFFF)V

    goto :goto_0
.end method

.method public fire(Lcom/badlogic/gdx/scenes/scene2d/Event;)Z
    .locals 8
    .param p1, "event"    # Lcom/badlogic/gdx/scenes/scene2d/Event;

    .prologue
    .line 121
    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Event;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v6

    if-nez v6, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/badlogic/gdx/scenes/scene2d/Event;->setStage(Lcom/badlogic/gdx/scenes/scene2d/Stage;)V

    .line 122
    :cond_0
    invoke-virtual {p1, p0}, Lcom/badlogic/gdx/scenes/scene2d/Event;->setTarget(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 125
    const-class v6, Lcom/badlogic/gdx/utils/Array;

    invoke-static {v6}, Lcom/badlogic/gdx/utils/Pools;->obtain(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/Array;

    .line 126
    .local v0, "ancestors":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/scenes/scene2d/Group;>;"
    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

    .line 127
    .local v5, "parent":Lcom/badlogic/gdx/scenes/scene2d/Group;
    :goto_0
    if-eqz v5, :cond_1

    .line 128
    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 129
    iget-object v5, v5, Lcom/badlogic/gdx/scenes/scene2d/Group;->parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

    goto :goto_0

    .line 134
    :cond_1
    :try_start_0
    iget-object v1, v0, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    .line 135
    .local v1, "ancestorsArray":[Ljava/lang/Object;
    iget v6, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    add-int/lit8 v3, v6, -0x1

    .local v3, "i":I
    :goto_1
    if-ltz v3, :cond_3

    .line 136
    aget-object v2, v1, v3

    check-cast v2, Lcom/badlogic/gdx/scenes/scene2d/Group;

    .line 137
    .local v2, "currentTarget":Lcom/badlogic/gdx/scenes/scene2d/Group;
    const/4 v6, 0x1

    invoke-virtual {v2, p1, v6}, Lcom/badlogic/gdx/scenes/scene2d/Group;->notify(Lcom/badlogic/gdx/scenes/scene2d/Event;Z)Z

    .line 138
    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Event;->isStopped()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Event;->isCancelled()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    .line 158
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 159
    invoke-static {v0}, Lcom/badlogic/gdx/utils/Pools;->free(Ljava/lang/Object;)V

    .end local v2    # "currentTarget":Lcom/badlogic/gdx/scenes/scene2d/Group;
    :goto_2
    return v6

    .line 135
    .restart local v2    # "currentTarget":Lcom/badlogic/gdx/scenes/scene2d/Group;
    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 142
    .end local v2    # "currentTarget":Lcom/badlogic/gdx/scenes/scene2d/Group;
    :cond_3
    const/4 v6, 0x1

    :try_start_1
    invoke-virtual {p0, p1, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->notify(Lcom/badlogic/gdx/scenes/scene2d/Event;Z)Z

    .line 143
    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Event;->isStopped()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Event;->isCancelled()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v6

    .line 158
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 159
    invoke-static {v0}, Lcom/badlogic/gdx/utils/Pools;->free(Ljava/lang/Object;)V

    goto :goto_2

    .line 146
    :cond_4
    const/4 v6, 0x0

    :try_start_2
    invoke-virtual {p0, p1, v6}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->notify(Lcom/badlogic/gdx/scenes/scene2d/Event;Z)Z

    .line 147
    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Event;->getBubbles()Z

    move-result v6

    if-nez v6, :cond_5

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Event;->isCancelled()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v6

    .line 158
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 159
    invoke-static {v0}, Lcom/badlogic/gdx/utils/Pools;->free(Ljava/lang/Object;)V

    goto :goto_2

    .line 148
    :cond_5
    :try_start_3
    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Event;->isStopped()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Event;->isCancelled()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v6

    .line 158
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 159
    invoke-static {v0}, Lcom/badlogic/gdx/utils/Pools;->free(Ljava/lang/Object;)V

    goto :goto_2

    .line 151
    :cond_6
    const/4 v3, 0x0

    :try_start_4
    iget v4, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    .local v4, "n":I
    :goto_3
    if-ge v3, v4, :cond_8

    .line 152
    aget-object v6, v1, v3

    check-cast v6, Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/4 v7, 0x0

    invoke-virtual {v6, p1, v7}, Lcom/badlogic/gdx/scenes/scene2d/Group;->notify(Lcom/badlogic/gdx/scenes/scene2d/Event;Z)Z

    .line 153
    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Event;->isStopped()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Event;->isCancelled()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v6

    .line 158
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 159
    invoke-static {v0}, Lcom/badlogic/gdx/utils/Pools;->free(Ljava/lang/Object;)V

    goto :goto_2

    .line 151
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 156
    :cond_8
    :try_start_5
    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Event;->isCancelled()Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v6

    .line 158
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 159
    invoke-static {v0}, Lcom/badlogic/gdx/utils/Pools;->free(Ljava/lang/Object;)V

    goto :goto_2

    .line 158
    .end local v1    # "ancestorsArray":[Ljava/lang/Object;
    .end local v3    # "i":I
    .end local v4    # "n":I
    :catchall_0
    move-exception v6

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    .line 159
    invoke-static {v0}, Lcom/badlogic/gdx/utils/Pools;->free(Ljava/lang/Object;)V

    throw v6
.end method

.method public getActions()Lcom/badlogic/gdx/utils/Array;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/scenes/scene2d/Action;",
            ">;"
        }
    .end annotation

    .prologue
    .line 267
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->actions:Lcom/badlogic/gdx/utils/Array;

    return-object v0
.end method

.method public getCaptureListeners()Lcom/badlogic/gdx/utils/Array;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/scenes/scene2d/EventListener;",
            ">;"
        }
    .end annotation

    .prologue
    .line 252
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->captureListeners:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    return-object v0
.end method

.method public getColor()Lcom/badlogic/gdx/graphics/Color;
    .locals 1

    .prologue
    .line 628
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->color:Lcom/badlogic/gdx/graphics/Color;

    return-object v0
.end method

.method public getDebug()Z
    .locals 1

    .prologue
    .line 817
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->debug:Z

    return v0
.end method

.method public getHeight()F
    .locals 1

    .prologue
    .line 462
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->height:F

    return v0
.end method

.method public getListeners()Lcom/badlogic/gdx/utils/Array;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/scenes/scene2d/EventListener;",
            ">;"
        }
    .end annotation

    .prologue
    .line 237
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->listeners:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 633
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginX()F
    .locals 1

    .prologue
    .line 527
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->originX:F

    return v0
.end method

.method public getOriginY()F
    .locals 1

    .prologue
    .line 535
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->originY:F

    return v0
.end method

.method public getParent()Lcom/badlogic/gdx/scenes/scene2d/Group;
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

    return-object v0
.end method

.method public getRight()F
    .locals 2

    .prologue
    .line 478
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->x:F

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->width:F

    add-float/2addr v0, v1

    return v0
.end method

.method public getRotation()F
    .locals 1

    .prologue
    .line 606
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->rotation:F

    return v0
.end method

.method public getScaleX()F
    .locals 1

    .prologue
    .line 566
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->scaleX:F

    return v0
.end method

.method public getScaleY()F
    .locals 1

    .prologue
    .line 574
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->scaleY:F

    return v0
.end method

.method public getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    return-object v0
.end method

.method public getTop()F
    .locals 2

    .prologue
    .line 473
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->y:F

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->height:F

    add-float/2addr v0, v1

    return v0
.end method

.method public getTouchable()Lcom/badlogic/gdx/scenes/scene2d/Touchable;
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->touchable:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    return-object v0
.end method

.method public getUserObject()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->userObject:Ljava/lang/Object;

    return-object v0
.end method

.method public getWidth()F
    .locals 1

    .prologue
    .line 452
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->width:F

    return v0
.end method

.method public getX()F
    .locals 1

    .prologue
    .line 372
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->x:F

    return v0
.end method

.method public getX(I)F
    .locals 3
    .param p1, "alignment"    # I

    .prologue
    .line 377
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->x:F

    .line 378
    .local v0, "x":F
    and-int/lit8 v1, p1, 0x10

    if-eqz v1, :cond_1

    .line 379
    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->width:F

    add-float/2addr v0, v1

    .line 382
    :cond_0
    :goto_0
    return v0

    .line 380
    :cond_1
    and-int/lit8 v1, p1, 0x8

    if-nez v1, :cond_0

    .line 381
    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->width:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    goto :goto_0
.end method

.method public getY()F
    .locals 1

    .prologue
    .line 394
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->y:F

    return v0
.end method

.method public getY(I)F
    .locals 3
    .param p1, "alignment"    # I

    .prologue
    .line 406
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->y:F

    .line 407
    .local v0, "y":F
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_1

    .line 408
    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->height:F

    add-float/2addr v0, v1

    .line 411
    :cond_0
    :goto_0
    return v0

    .line 409
    :cond_1
    and-int/lit8 v1, p1, 0x4

    if-nez v1, :cond_0

    .line 410
    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->height:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    goto :goto_0
.end method

.method public getZIndex()I
    .locals 3

    .prologue
    .line 671
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

    .line 672
    .local v0, "parent":Lcom/badlogic/gdx/scenes/scene2d/Group;
    if-nez v0, :cond_0

    const/4 v1, -0x1

    .line 673
    :goto_0
    return v1

    :cond_0
    iget-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Lcom/badlogic/gdx/utils/SnapshotArray;

    const/4 v2, 0x1

    invoke-virtual {v1, p0, v2}, Lcom/badlogic/gdx/utils/SnapshotArray;->indexOf(Ljava/lang/Object;Z)I

    move-result v1

    goto :goto_0
.end method

.method public hasParent()Z
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hit(FFZ)Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "touchable"    # Z

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 209
    if-eqz p3, :cond_0

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->touchable:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    sget-object v2, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->enabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    if-eq v1, v2, :cond_0

    .line 210
    .end local p0    # "this":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    :goto_0
    return-object v0

    .restart local p0    # "this":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    :cond_0
    cmpl-float v1, p1, v3

    if-ltz v1, :cond_1

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->width:F

    cmpg-float v1, p1, v1

    if-gez v1, :cond_1

    cmpl-float v1, p2, v3

    if-ltz v1, :cond_1

    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->height:F

    cmpg-float v1, p2, v1

    if-gez v1, :cond_1

    .end local p0    # "this":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    :goto_1
    move-object v0, p0

    goto :goto_0

    .restart local p0    # "this":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    :cond_1
    move-object p0, v0

    goto :goto_1
.end method

.method public isAscendantOf(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Z
    .locals 2
    .param p1, "actor"    # Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .prologue
    .line 313
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "actor cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 317
    :cond_0
    iget-object p1, p1, Lcom/badlogic/gdx/scenes/scene2d/Actor;->parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

    .line 315
    :cond_1
    if-nez p1, :cond_2

    const/4 v0, 0x0

    .line 316
    :goto_0
    return v0

    :cond_2
    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isDescendantOf(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Z
    .locals 3
    .param p1, "actor"    # Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .prologue
    .line 302
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "actor cannot be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 303
    :cond_0
    move-object v0, p0

    .line 305
    .local v0, "parent":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    :goto_0
    if-nez v0, :cond_1

    const/4 v1, 0x0

    .line 306
    :goto_1
    return v1

    :cond_1
    if-ne v0, p1, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    .line 307
    :cond_2
    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

    goto :goto_0
.end method

.method public isTouchable()Z
    .locals 2

    .prologue
    .line 339
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->touchable:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->enabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 352
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->visible:Z

    return v0
.end method

.method public localToAscendantCoordinates(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;
    .locals 1
    .param p1, "ascendant"    # Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .param p2, "localCoords"    # Lcom/badlogic/gdx/math/Vector2;

    .prologue
    .line 758
    move-object v0, p0

    .line 759
    .local v0, "actor":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    :cond_0
    if-eqz v0, :cond_1

    .line 760
    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->localToParentCoordinates(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    .line 761
    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

    .line 762
    if-ne v0, p1, :cond_0

    .line 764
    :cond_1
    return-object p2
.end method

.method public localToParentCoordinates(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;
    .locals 14
    .param p1, "localCoords"    # Lcom/badlogic/gdx/math/Vector2;

    .prologue
    .line 728
    iget v11, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->rotation:F

    neg-float v3, v11

    .line 729
    .local v3, "rotation":F
    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->scaleX:F

    .line 730
    .local v4, "scaleX":F
    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->scaleY:F

    .line 731
    .local v5, "scaleY":F
    iget v9, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->x:F

    .line 732
    .local v9, "x":F
    iget v10, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->y:F

    .line 733
    .local v10, "y":F
    const/4 v11, 0x0

    cmpl-float v11, v3, v11

    if-nez v11, :cond_1

    .line 734
    const/high16 v11, 0x3f800000    # 1.0f

    cmpl-float v11, v4, v11

    if-nez v11, :cond_0

    const/high16 v11, 0x3f800000    # 1.0f

    cmpl-float v11, v5, v11

    if-nez v11, :cond_0

    .line 735
    iget v11, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    add-float/2addr v11, v9

    iput v11, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 736
    iget v11, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    add-float/2addr v11, v10

    iput v11, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 753
    :goto_0
    return-object p1

    .line 738
    :cond_0
    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->originX:F

    .line 739
    .local v1, "originX":F
    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->originY:F

    .line 740
    .local v2, "originY":F
    iget v11, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr v11, v1

    mul-float/2addr v11, v4

    add-float/2addr v11, v1

    add-float/2addr v11, v9

    iput v11, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 741
    iget v11, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v11, v2

    mul-float/2addr v11, v5

    add-float/2addr v11, v2

    add-float/2addr v11, v10

    iput v11, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    goto :goto_0

    .line 744
    .end local v1    # "originX":F
    .end local v2    # "originY":F
    :cond_1
    const v11, 0x3c8efa35

    mul-float/2addr v11, v3

    float-to-double v12, v11

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    double-to-float v0, v12

    .line 745
    .local v0, "cos":F
    const v11, 0x3c8efa35

    mul-float/2addr v11, v3

    float-to-double v12, v11

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    double-to-float v6, v12

    .line 746
    .local v6, "sin":F
    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->originX:F

    .line 747
    .restart local v1    # "originX":F
    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->originY:F

    .line 748
    .restart local v2    # "originY":F
    iget v11, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr v11, v1

    mul-float v7, v11, v4

    .line 749
    .local v7, "tox":F
    iget v11, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v11, v2

    mul-float v8, v11, v5

    .line 750
    .local v8, "toy":F
    mul-float v11, v7, v0

    mul-float v12, v8, v6

    add-float/2addr v11, v12

    add-float/2addr v11, v1

    add-float/2addr v11, v9

    iput v11, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 751
    neg-float v11, v6

    mul-float/2addr v11, v7

    mul-float v12, v8, v0

    add-float/2addr v11, v12

    add-float/2addr v11, v2

    add-float/2addr v11, v10

    iput v11, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    goto :goto_0
.end method

.method public localToStageCoordinates(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;
    .locals 1
    .param p1, "localCoords"    # Lcom/badlogic/gdx/math/Vector2;

    .prologue
    .line 723
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->localToAscendantCoordinates(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    return-object v0
.end method

.method public moveBy(FF)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v1, 0x0

    .line 444
    cmpl-float v0, p1, v1

    if-nez v0, :cond_0

    cmpl-float v0, p2, v1

    if-eqz v0, :cond_1

    .line 445
    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->x:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->x:F

    .line 446
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->y:F

    add-float/2addr v0, p2

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->y:F

    .line 447
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->positionChanged()V

    .line 449
    :cond_1
    return-void
.end method

.method public notify(Lcom/badlogic/gdx/scenes/scene2d/Event;Z)Z
    .locals 10
    .param p1, "event"    # Lcom/badlogic/gdx/scenes/scene2d/Event;
    .param p2, "capture"    # Z

    .prologue
    .line 169
    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Event;->getTarget()Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "The event target cannot be null."

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 171
    :cond_0
    if-eqz p2, :cond_1

    iget-object v8, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->captureListeners:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    .line 172
    .local v8, "listeners":Lcom/badlogic/gdx/utils/DelayedRemovalArray;, "Lcom/badlogic/gdx/utils/DelayedRemovalArray<Lcom/badlogic/gdx/scenes/scene2d/EventListener;>;"
    :goto_0
    iget v0, v8, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->size:I

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Event;->isCancelled()Z

    move-result v0

    .line 194
    :goto_1
    return v0

    .line 171
    .end local v8    # "listeners":Lcom/badlogic/gdx/utils/DelayedRemovalArray;, "Lcom/badlogic/gdx/utils/DelayedRemovalArray<Lcom/badlogic/gdx/scenes/scene2d/EventListener;>;"
    :cond_1
    iget-object v8, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->listeners:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    goto :goto_0

    .line 174
    .restart local v8    # "listeners":Lcom/badlogic/gdx/utils/DelayedRemovalArray;, "Lcom/badlogic/gdx/utils/DelayedRemovalArray<Lcom/badlogic/gdx/scenes/scene2d/EventListener;>;"
    :cond_2
    invoke-virtual {p1, p0}, Lcom/badlogic/gdx/scenes/scene2d/Event;->setListenerActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 175
    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/Event;->setCapture(Z)V

    .line 176
    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Event;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Event;->setStage(Lcom/badlogic/gdx/scenes/scene2d/Stage;)V

    .line 178
    :cond_3
    invoke-virtual {v8}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->begin()V

    .line 179
    const/4 v6, 0x0

    .local v6, "i":I
    iget v9, v8, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->size:I

    .local v9, "n":I
    :goto_2
    if-ge v6, v9, :cond_5

    .line 180
    invoke-virtual {v8, v6}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/scenes/scene2d/EventListener;

    .line 181
    .local v1, "listener":Lcom/badlogic/gdx/scenes/scene2d/EventListener;
    invoke-interface {v1, p1}, Lcom/badlogic/gdx/scenes/scene2d/EventListener;->handle(Lcom/badlogic/gdx/scenes/scene2d/Event;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 182
    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Event;->handle()V

    .line 183
    instance-of v0, p1, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;

    if-eqz v0, :cond_4

    move-object v7, p1

    .line 184
    check-cast v7, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;

    .line 185
    .local v7, "inputEvent":Lcom/badlogic/gdx/scenes/scene2d/InputEvent;
    invoke-virtual {v7}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->getType()Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

    move-result-object v0

    sget-object v2, Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;->touchDown:Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

    if-ne v0, v2, :cond_4

    .line 186
    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Event;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v0

    invoke-virtual {v7}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->getTarget()Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v3

    invoke-virtual {v7}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->getPointer()I

    move-result v4

    invoke-virtual {v7}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->getButton()I

    move-result v5

    move-object v2, p0

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->addTouchFocus(Lcom/badlogic/gdx/scenes/scene2d/EventListener;Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/Actor;II)V

    .line 179
    .end local v7    # "inputEvent":Lcom/badlogic/gdx/scenes/scene2d/InputEvent;
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 192
    .end local v1    # "listener":Lcom/badlogic/gdx/scenes/scene2d/EventListener;
    :cond_5
    invoke-virtual {v8}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->end()V

    .line 194
    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Event;->isCancelled()Z

    move-result v0

    goto :goto_1
.end method

.method public parentToLocalCoordinates(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;
    .locals 14
    .param p1, "parentCoords"    # Lcom/badlogic/gdx/math/Vector2;

    .prologue
    .line 769
    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->rotation:F

    .line 770
    .local v5, "rotation":F
    iget v6, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->scaleX:F

    .line 771
    .local v6, "scaleX":F
    iget v7, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->scaleY:F

    .line 772
    .local v7, "scaleY":F
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->x:F

    .line 773
    .local v0, "childX":F
    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->y:F

    .line 774
    .local v1, "childY":F
    const/4 v11, 0x0

    cmpl-float v11, v5, v11

    if-nez v11, :cond_1

    .line 775
    const/high16 v11, 0x3f800000    # 1.0f

    cmpl-float v11, v6, v11

    if-nez v11, :cond_0

    const/high16 v11, 0x3f800000    # 1.0f

    cmpl-float v11, v7, v11

    if-nez v11, :cond_0

    .line 776
    iget v11, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr v11, v0

    iput v11, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 777
    iget v11, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v11, v1

    iput v11, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 794
    :goto_0
    return-object p1

    .line 779
    :cond_0
    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->originX:F

    .line 780
    .local v3, "originX":F
    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->originY:F

    .line 781
    .local v4, "originY":F
    iget v11, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr v11, v0

    sub-float/2addr v11, v3

    div-float/2addr v11, v6

    add-float/2addr v11, v3

    iput v11, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 782
    iget v11, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v11, v1

    sub-float/2addr v11, v4

    div-float/2addr v11, v7

    add-float/2addr v11, v4

    iput v11, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    goto :goto_0

    .line 785
    .end local v3    # "originX":F
    .end local v4    # "originY":F
    :cond_1
    const v11, 0x3c8efa35

    mul-float/2addr v11, v5

    float-to-double v12, v11

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    double-to-float v2, v12

    .line 786
    .local v2, "cos":F
    const v11, 0x3c8efa35

    mul-float/2addr v11, v5

    float-to-double v12, v11

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    double-to-float v8, v12

    .line 787
    .local v8, "sin":F
    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->originX:F

    .line 788
    .restart local v3    # "originX":F
    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->originY:F

    .line 789
    .restart local v4    # "originY":F
    iget v11, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    sub-float/2addr v11, v0

    sub-float v9, v11, v3

    .line 790
    .local v9, "tox":F
    iget v11, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v11, v1

    sub-float v10, v11, v4

    .line 791
    .local v10, "toy":F
    mul-float v11, v9, v2

    mul-float v12, v10, v8

    add-float/2addr v11, v12

    div-float/2addr v11, v6

    add-float/2addr v11, v3

    iput v11, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 792
    neg-float v11, v8

    mul-float/2addr v11, v9

    mul-float v12, v10, v2

    add-float/2addr v11, v12

    div-float/2addr v11, v7

    add-float/2addr v11, v4

    iput v11, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    goto :goto_0
.end method

.method protected positionChanged()V
    .locals 0

    .prologue
    .line 483
    return-void
.end method

.method public remove()Z
    .locals 2

    .prologue
    .line 216
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->removeActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;Z)Z

    move-result v0

    .line 217
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V
    .locals 2
    .param p1, "action"    # Lcom/badlogic/gdx/scenes/scene2d/Action;

    .prologue
    .line 263
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->actions:Lcom/badlogic/gdx/utils/Array;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/Array;->removeValue(Ljava/lang/Object;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Action;->setActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 264
    :cond_0
    return-void
.end method

.method public removeCaptureListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z
    .locals 2
    .param p1, "listener"    # Lcom/badlogic/gdx/scenes/scene2d/EventListener;

    .prologue
    .line 248
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->captureListeners:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->removeValue(Ljava/lang/Object;Z)Z

    move-result v0

    return v0
.end method

.method public removeListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z
    .locals 2
    .param p1, "listener"    # Lcom/badlogic/gdx/scenes/scene2d/EventListener;

    .prologue
    .line 233
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->listeners:Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->removeValue(Ljava/lang/Object;Z)Z

    move-result v0

    return v0
.end method

.method public rotateBy(F)V
    .locals 1
    .param p1, "amountInDegrees"    # F

    .prologue
    .line 615
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->rotation:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->rotation:F

    .line 616
    return-void
.end method

.method public scaleBy(F)V
    .locals 1
    .param p1, "scale"    # F

    .prologue
    .line 595
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->scaleX:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->scaleX:F

    .line 596
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->scaleY:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->scaleY:F

    .line 597
    return-void
.end method

.method public scaleBy(FF)V
    .locals 1
    .param p1, "scaleX"    # F
    .param p2, "scaleY"    # F

    .prologue
    .line 601
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->scaleX:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->scaleX:F

    .line 602
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->scaleY:F

    add-float/2addr v0, p2

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->scaleY:F

    .line 603
    return-void
.end method

.method public screenToLocalCoordinates(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;
    .locals 2
    .param p1, "screenCoords"    # Lcom/badlogic/gdx/math/Vector2;

    .prologue
    .line 708
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    .line 709
    .local v0, "stage":Lcom/badlogic/gdx/scenes/scene2d/Stage;
    if-nez v0, :cond_0

    .line 710
    .end local p1    # "screenCoords":Lcom/badlogic/gdx/math/Vector2;
    :goto_0
    return-object p1

    .restart local p1    # "screenCoords":Lcom/badlogic/gdx/math/Vector2;
    :cond_0
    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->screenToStageCoordinates(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->stageToLocalCoordinates(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object p1

    goto :goto_0
.end method

.method public setBounds(FFFF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "width"    # F
    .param p4, "height"    # F

    .prologue
    .line 514
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->x:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->y:F

    cmpl-float v0, v0, p2

    if-eqz v0, :cond_1

    .line 515
    :cond_0
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->x:F

    .line 516
    iput p2, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->y:F

    .line 517
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->positionChanged()V

    .line 519
    :cond_1
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->width:F

    cmpl-float v0, v0, p3

    if-nez v0, :cond_2

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->height:F

    cmpl-float v0, v0, p4

    if-eqz v0, :cond_3

    .line 520
    :cond_2
    iput p3, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->width:F

    .line 521
    iput p4, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->height:F

    .line 522
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->sizeChanged()V

    .line 524
    :cond_3
    return-void
.end method

.method public setColor(FFFF)V
    .locals 1
    .param p1, "r"    # F
    .param p2, "g"    # F
    .param p3, "b"    # F
    .param p4, "a"    # F

    .prologue
    .line 623
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/Color;->set(FFFF)Lcom/badlogic/gdx/graphics/Color;

    .line 624
    return-void
.end method

.method public setColor(Lcom/badlogic/gdx/graphics/Color;)V
    .locals 1
    .param p1, "color"    # Lcom/badlogic/gdx/graphics/Color;

    .prologue
    .line 619
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    .line 620
    return-void
.end method

.method public setDebug(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 812
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->debug:Z

    .line 813
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->debug:Z

    .line 814
    :cond_0
    return-void
.end method

.method public setHeight(F)V
    .locals 2
    .param p1, "height"    # F

    .prologue
    .line 466
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->height:F

    .line 467
    .local v0, "oldHeight":F
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->height:F

    .line 468
    cmpl-float v1, p1, v0

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->sizeChanged()V

    .line 469
    :cond_0
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 639
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->name:Ljava/lang/String;

    .line 640
    return-void
.end method

.method public setOrigin(FF)V
    .locals 0
    .param p1, "originX"    # F
    .param p2, "originY"    # F

    .prologue
    .line 544
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->originX:F

    .line 545
    iput p2, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->originY:F

    .line 546
    return-void
.end method

.method public setOrigin(I)V
    .locals 3
    .param p1, "alignment"    # I

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    const/4 v1, 0x0

    .line 550
    and-int/lit8 v0, p1, 0x8

    if-eqz v0, :cond_0

    .line 551
    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->originX:F

    .line 557
    :goto_0
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_2

    .line 558
    iput v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->originY:F

    .line 563
    :goto_1
    return-void

    .line 552
    :cond_0
    and-int/lit8 v0, p1, 0x10

    if-eqz v0, :cond_1

    .line 553
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->width:F

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->originX:F

    goto :goto_0

    .line 555
    :cond_1
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->width:F

    div-float/2addr v0, v2

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->originX:F

    goto :goto_0

    .line 559
    :cond_2
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_3

    .line 560
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->height:F

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->originY:F

    goto :goto_1

    .line 562
    :cond_3
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->height:F

    div-float/2addr v0, v2

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->originY:F

    goto :goto_1
.end method

.method public setOriginX(F)V
    .locals 0
    .param p1, "originX"    # F

    .prologue
    .line 531
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->originX:F

    .line 532
    return-void
.end method

.method public setOriginY(F)V
    .locals 0
    .param p1, "originY"    # F

    .prologue
    .line 539
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->originY:F

    .line 540
    return-void
.end method

.method protected setParent(Lcom/badlogic/gdx/scenes/scene2d/Group;)V
    .locals 0
    .param p1, "parent"    # Lcom/badlogic/gdx/scenes/scene2d/Group;

    .prologue
    .line 334
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

    .line 335
    return-void
.end method

.method public setPosition(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 416
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->x:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->y:F

    cmpl-float v0, v0, p2

    if-eqz v0, :cond_1

    .line 417
    :cond_0
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->x:F

    .line 418
    iput p2, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->y:F

    .line 419
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->positionChanged()V

    .line 421
    :cond_1
    return-void
.end method

.method public setPosition(FFI)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "alignment"    # I

    .prologue
    const/high16 v1, 0x40000000    # 2.0f

    .line 425
    and-int/lit8 v0, p3, 0x10

    if-eqz v0, :cond_4

    .line 426
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->width:F

    sub-float/2addr p1, v0

    .line 430
    :cond_0
    :goto_0
    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_5

    .line 431
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->height:F

    sub-float/2addr p2, v0

    .line 435
    :cond_1
    :goto_1
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->x:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_2

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->y:F

    cmpl-float v0, v0, p2

    if-eqz v0, :cond_3

    .line 436
    :cond_2
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->x:F

    .line 437
    iput p2, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->y:F

    .line 438
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->positionChanged()V

    .line 440
    :cond_3
    return-void

    .line 427
    :cond_4
    and-int/lit8 v0, p3, 0x8

    if-nez v0, :cond_0

    .line 428
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->width:F

    div-float/2addr v0, v1

    sub-float/2addr p1, v0

    goto :goto_0

    .line 432
    :cond_5
    and-int/lit8 v0, p3, 0x4

    if-nez v0, :cond_1

    .line 433
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->height:F

    div-float/2addr v0, v1

    sub-float/2addr p2, v0

    goto :goto_1
.end method

.method public setRotation(F)V
    .locals 0
    .param p1, "degrees"    # F

    .prologue
    .line 610
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->rotation:F

    .line 611
    return-void
.end method

.method public setScale(F)V
    .locals 0
    .param p1, "scaleXY"    # F

    .prologue
    .line 583
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->scaleX:F

    .line 584
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->scaleY:F

    .line 585
    return-void
.end method

.method public setScale(FF)V
    .locals 0
    .param p1, "scaleX"    # F
    .param p2, "scaleY"    # F

    .prologue
    .line 589
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->scaleX:F

    .line 590
    iput p2, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->scaleY:F

    .line 591
    return-void
.end method

.method public setScaleX(F)V
    .locals 0
    .param p1, "scaleX"    # F

    .prologue
    .line 570
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->scaleX:F

    .line 571
    return-void
.end method

.method public setScaleY(F)V
    .locals 0
    .param p1, "scaleY"    # F

    .prologue
    .line 578
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->scaleY:F

    .line 579
    return-void
.end method

.method public setSize(FF)V
    .locals 3
    .param p1, "width"    # F
    .param p2, "height"    # F

    .prologue
    .line 491
    iget v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->width:F

    .line 492
    .local v1, "oldWidth":F
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->height:F

    .line 493
    .local v0, "oldHeight":F
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->width:F

    .line 494
    iput p2, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->height:F

    .line 495
    cmpl-float v2, p1, v1

    if-nez v2, :cond_0

    cmpl-float v2, p2, v0

    if-eqz v2, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->sizeChanged()V

    .line 496
    :cond_1
    return-void
.end method

.method protected setStage(Lcom/badlogic/gdx/scenes/scene2d/Stage;)V
    .locals 0
    .param p1, "stage"    # Lcom/badlogic/gdx/scenes/scene2d/Stage;

    .prologue
    .line 297
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->stage:Lcom/badlogic/gdx/scenes/scene2d/Stage;

    .line 298
    return-void
.end method

.method public setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V
    .locals 0
    .param p1, "touchable"    # Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    .prologue
    .line 348
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->touchable:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    .line 349
    return-void
.end method

.method public setUserObject(Ljava/lang/Object;)V
    .locals 0
    .param p1, "userObject"    # Ljava/lang/Object;

    .prologue
    .line 367
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->userObject:Ljava/lang/Object;

    .line 368
    return-void
.end method

.method public setVisible(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 357
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->visible:Z

    .line 358
    return-void
.end method

.method public setWidth(F)V
    .locals 2
    .param p1, "width"    # F

    .prologue
    .line 456
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->width:F

    .line 457
    .local v0, "oldWidth":F
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->width:F

    .line 458
    cmpl-float v1, p1, v0

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->sizeChanged()V

    .line 459
    :cond_0
    return-void
.end method

.method public setX(F)V
    .locals 1
    .param p1, "x"    # F

    .prologue
    .line 386
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->x:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 387
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->x:F

    .line 388
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->positionChanged()V

    .line 390
    :cond_0
    return-void
.end method

.method public setY(F)V
    .locals 1
    .param p1, "y"    # F

    .prologue
    .line 398
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->y:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 399
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->y:F

    .line 400
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->positionChanged()V

    .line 402
    :cond_0
    return-void
.end method

.method public setZIndex(I)V
    .locals 4
    .param p1, "index"    # I

    .prologue
    const/4 v3, 0x1

    .line 656
    if-gez p1, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "ZIndex cannot be < 0."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 657
    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

    .line 658
    .local v1, "parent":Lcom/badlogic/gdx/scenes/scene2d/Group;
    if-nez v1, :cond_2

    .line 666
    :cond_1
    :goto_0
    return-void

    .line 659
    :cond_2
    iget-object v0, v1, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Lcom/badlogic/gdx/utils/SnapshotArray;

    .line 660
    .local v0, "children":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/scenes/scene2d/Actor;>;"
    iget v2, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-eq v2, v3, :cond_1

    .line 661
    invoke-virtual {v0, p0, v3}, Lcom/badlogic/gdx/utils/Array;->removeValue(Ljava/lang/Object;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 662
    iget v2, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-lt p1, v2, :cond_3

    .line 663
    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_0

    .line 665
    :cond_3
    invoke-virtual {v0, p1, p0}, Lcom/badlogic/gdx/utils/Array;->insert(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public sizeBy(F)V
    .locals 1
    .param p1, "size"    # F

    .prologue
    .line 500
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->width:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->width:F

    .line 501
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->height:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->height:F

    .line 502
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->sizeChanged()V

    .line 503
    return-void
.end method

.method public sizeBy(FF)V
    .locals 1
    .param p1, "width"    # F
    .param p2, "height"    # F

    .prologue
    .line 507
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->width:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->width:F

    .line 508
    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->height:F

    add-float/2addr v0, p2

    iput v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->height:F

    .line 509
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->sizeChanged()V

    .line 510
    return-void
.end method

.method protected sizeChanged()V
    .locals 0

    .prologue
    .line 487
    return-void
.end method

.method public stageToLocalCoordinates(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;
    .locals 1
    .param p1, "stageCoords"    # Lcom/badlogic/gdx/math/Vector2;

    .prologue
    .line 715
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->stageToLocalCoordinates(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    .line 716
    :cond_0
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->parentToLocalCoordinates(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    .line 717
    return-object p1
.end method

.method public toBack()V
    .locals 1

    .prologue
    .line 649
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setZIndex(I)V

    .line 650
    return-void
.end method

.method public toFront()V
    .locals 1

    .prologue
    .line 644
    const v0, 0x7fffffff

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setZIndex(I)V

    .line 645
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 827
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->name:Ljava/lang/String;

    .line 828
    .local v1, "name":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 829
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 830
    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 831
    .local v0, "dotIndex":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 833
    .end local v0    # "dotIndex":I
    :cond_0
    return-object v1
.end method
