.class Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;
.super Lcom/badlogic/gdx/scenes/scene2d/utils/DragListener;
.source "DragAndDrop.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->addSource(Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Source;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

.field final synthetic val$source:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Source;


# direct methods
.method constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Source;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    iput-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->val$source:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Source;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/DragListener;-><init>()V

    return-void
.end method


# virtual methods
.method public drag(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFI)V
    .locals 20
    .param p1, "event"    # Lcom/badlogic/gdx/scenes/scene2d/InputEvent;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "pointer"    # I

    .prologue
    .line 69
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    iget-object v3, v3, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->payload:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Payload;

    if-nez v3, :cond_1

    .line 122
    :cond_0
    :goto_0
    return-void

    .line 70
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    iget v3, v3, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->activePointer:I

    move/from16 v0, p4

    if-ne v0, v3, :cond_0

    .line 72
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v16

    .line 74
    .local v16, "stage":Lcom/badlogic/gdx/scenes/scene2d/Stage;
    const/4 v11, 0x0

    .line 75
    .local v11, "dragActorTouchable":Lcom/badlogic/gdx/scenes/scene2d/Touchable;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    iget-object v3, v3, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->dragActor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-eqz v3, :cond_2

    .line 76
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    iget-object v3, v3, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->dragActor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getTouchable()Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    move-result-object v11

    .line 77
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    iget-object v3, v3, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->dragActor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    sget-object v4, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->disabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    .line 81
    :cond_2
    const/4 v15, 0x0

    .line 82
    .local v15, "newTarget":Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Target;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->isValidTarget:Z

    .line 83
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->getStageX()F

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    iget v4, v4, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->touchOffsetX:F

    add-float v17, v3, v4

    .local v17, "stageX":F
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->getStageY()F

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    iget v4, v4, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->touchOffsetY:F

    add-float v18, v3, v4

    .line 84
    .local v18, "stageY":F
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v3

    const/4 v4, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v3, v0, v1, v4}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->hit(FFZ)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v12

    .line 85
    .local v12, "hit":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    if-nez v12, :cond_3

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v3

    const/4 v4, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v3, v0, v1, v4}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->hit(FFZ)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v12

    .line 86
    :cond_3
    if-eqz v12, :cond_5

    .line 87
    const/4 v13, 0x0

    .local v13, "i":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    iget-object v3, v3, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->targets:Lcom/badlogic/gdx/utils/Array;

    iget v14, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    .local v14, "n":I
    :goto_1
    if-ge v13, v14, :cond_5

    .line 88
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    iget-object v3, v3, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->targets:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v3, v13}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Target;

    .line 89
    .local v2, "target":Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Target;
    iget-object v3, v2, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Target;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v3, v12}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->isAscendantOf(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 87
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 90
    :cond_4
    move-object v15, v2

    .line 91
    iget-object v3, v2, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Target;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    sget-object v4, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->tmpVector:Lcom/badlogic/gdx/math/Vector2;

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->stageToLocalCoordinates(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    .line 92
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->val$source:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Source;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    iget-object v4, v4, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->payload:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Payload;

    sget-object v5, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->tmpVector:Lcom/badlogic/gdx/math/Vector2;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector2;->x:F

    sget-object v6, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->tmpVector:Lcom/badlogic/gdx/math/Vector2;

    iget v6, v6, Lcom/badlogic/gdx/math/Vector2;->y:F

    move/from16 v7, p4

    invoke-virtual/range {v2 .. v7}, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Target;->drag(Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Source;Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Payload;FFI)Z

    move-result v3

    move-object/from16 v0, v19

    iput-boolean v3, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->isValidTarget:Z

    .line 96
    .end local v2    # "target":Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Target;
    .end local v13    # "i":I
    .end local v14    # "n":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    iget-object v3, v3, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->target:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Target;

    if-eq v15, v3, :cond_7

    .line 97
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    iget-object v3, v3, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->target:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Target;

    if-eqz v3, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    iget-object v3, v3, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->target:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Target;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->val$source:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Source;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    iget-object v5, v5, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->payload:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Payload;

    invoke-virtual {v3, v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Target;->reset(Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Source;Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Payload;)V

    .line 98
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    iput-object v15, v3, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->target:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Target;

    .line 101
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    iget-object v3, v3, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->dragActor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-eqz v3, :cond_8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    iget-object v3, v3, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->dragActor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v3, v11}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setTouchable(Lcom/badlogic/gdx/scenes/scene2d/Touchable;)V

    .line 104
    :cond_8
    const/4 v8, 0x0

    .line 105
    .local v8, "actor":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    iget-object v3, v3, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->target:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Target;

    if-eqz v3, :cond_9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    iget-boolean v3, v3, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->isValidTarget:Z

    if-eqz v3, :cond_11

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    iget-object v3, v3, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->payload:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Payload;

    iget-object v8, v3, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Payload;->validDragActor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 106
    :cond_9
    :goto_2
    if-nez v8, :cond_a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    iget-object v3, v3, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->payload:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Payload;

    iget-object v8, v3, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Payload;->dragActor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 107
    :cond_a
    if-eqz v8, :cond_0

    .line 108
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    iget-object v3, v3, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->dragActor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-eq v3, v8, :cond_c

    .line 109
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    iget-object v3, v3, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->dragActor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-eqz v3, :cond_b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    iget-object v3, v3, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->dragActor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->remove()Z

    .line 110
    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    iput-object v8, v3, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->dragActor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 111
    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 113
    :cond_c
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->getStageX()F

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    iget v4, v4, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->dragActorX:F

    add-float v9, v3, v4

    .line 114
    .local v9, "actorX":F
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->getStageY()F

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    iget v4, v4, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->dragActorY:F

    add-float/2addr v3, v4

    invoke-virtual {v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getHeight()F

    move-result v4

    sub-float v10, v3, v4

    .line 115
    .local v10, "actorY":F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    iget-boolean v3, v3, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->keepWithinStage:Z

    if-eqz v3, :cond_10

    .line 116
    const/4 v3, 0x0

    cmpg-float v3, v9, v3

    if-gez v3, :cond_d

    const/4 v9, 0x0

    .line 117
    :cond_d
    const/4 v3, 0x0

    cmpg-float v3, v10, v3

    if-gez v3, :cond_e

    const/4 v10, 0x0

    .line 118
    :cond_e
    invoke-virtual {v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getWidth()F

    move-result v3

    add-float/2addr v3, v9

    invoke-virtual/range {v16 .. v16}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getWidth()F

    move-result v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_f

    invoke-virtual/range {v16 .. v16}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getWidth()F

    move-result v3

    invoke-virtual {v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getWidth()F

    move-result v4

    sub-float v9, v3, v4

    .line 119
    :cond_f
    invoke-virtual {v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getHeight()F

    move-result v3

    add-float/2addr v3, v10

    invoke-virtual/range {v16 .. v16}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getHeight()F

    move-result v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_10

    invoke-virtual/range {v16 .. v16}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getHeight()F

    move-result v3

    invoke-virtual {v8}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getHeight()F

    move-result v4

    sub-float v10, v3, v4

    .line 121
    :cond_10
    invoke-virtual {v8, v9, v10}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setPosition(FF)V

    goto/16 :goto_0

    .line 105
    .end local v9    # "actorX":F
    .end local v10    # "actorY":F
    :cond_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    iget-object v3, v3, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->payload:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Payload;

    iget-object v8, v3, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Payload;->invalidDragActor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    goto/16 :goto_2
.end method

.method public dragStart(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFI)V
    .locals 4
    .param p1, "event"    # Lcom/badlogic/gdx/scenes/scene2d/InputEvent;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "pointer"    # I

    .prologue
    .line 54
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    iget v0, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->activePointer:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 55
    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->stop()V

    .line 66
    :cond_0
    :goto_0
    return-void

    .line 59
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    iput p4, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->activePointer:I

    .line 61
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->dragStartTime:J

    .line 62
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->val$source:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Source;

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->getTouchDownX()F

    move-result v2

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->getTouchDownY()F

    move-result v3

    invoke-virtual {v1, p1, v2, v3, p4}, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Source;->dragStart(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFI)Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Payload;

    move-result-object v1

    iput-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->payload:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Payload;

    .line 63
    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->stop()V

    .line 65
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    iget-boolean v0, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->cancelTouchFocus:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->payload:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Payload;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->val$source:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Source;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Source;->getActor()Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->val$source:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Source;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Source;->getActor()Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->cancelTouchFocusExcept(Lcom/badlogic/gdx/scenes/scene2d/EventListener;Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    goto :goto_0
.end method

.method public dragStop(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFI)V
    .locals 11
    .param p1, "event"    # Lcom/badlogic/gdx/scenes/scene2d/InputEvent;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "pointer"    # I

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 125
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    iget v0, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->activePointer:I

    if-eq p4, v0, :cond_1

    .line 142
    :cond_0
    :goto_0
    return-void

    .line 126
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    const/4 v1, -0x1

    iput v1, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->activePointer:I

    .line 127
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->payload:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Payload;

    if-eqz v0, :cond_0

    .line 129
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    iget-wide v2, v2, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->dragStartTime:J

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    iget v2, v2, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->dragTime:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    iput-boolean v10, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->isValidTarget:Z

    .line 130
    :cond_2
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->dragActor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->dragActor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->remove()Z

    .line 131
    :cond_3
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    iget-boolean v0, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->isValidTarget:Z

    if-eqz v0, :cond_4

    .line 132
    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->getStageX()F

    move-result v0

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    iget v1, v1, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->touchOffsetX:F

    add-float v7, v0, v1

    .local v7, "stageX":F
    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->getStageY()F

    move-result v0

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    iget v1, v1, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->touchOffsetY:F

    add-float v8, v0, v1

    .line 133
    .local v8, "stageY":F
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->target:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Target;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Target;->actor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->tmpVector:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v1, v7, v8}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->stageToLocalCoordinates(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    .line 134
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->target:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Target;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->val$source:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Source;

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    iget-object v2, v2, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->payload:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Payload;

    sget-object v3, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->tmpVector:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    sget-object v4, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->tmpVector:Lcom/badlogic/gdx/math/Vector2;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector2;->y:F

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Target;->drop(Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Source;Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Payload;FFI)V

    .line 136
    .end local v7    # "stageX":F
    .end local v8    # "stageY":F
    :cond_4
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->val$source:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Source;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    iget-object v5, v1, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->payload:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Payload;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    iget-boolean v1, v1, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->isValidTarget:Z

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    iget-object v6, v1, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->target:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Target;

    :goto_1
    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Source;->dragStop(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFILcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Payload;Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Target;)V

    .line 137
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->target:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Target;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->target:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Target;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->val$source:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Source;

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    iget-object v2, v2, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->payload:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Payload;

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Target;->reset(Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Source;Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Payload;)V

    .line 138
    :cond_5
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    iput-object v9, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->payload:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Payload;

    .line 139
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    iput-object v9, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->target:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$Target;

    .line 140
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    iput-boolean v10, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->isValidTarget:Z

    .line 141
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;

    iput-object v9, v0, Lcom/badlogic/gdx/scenes/scene2d/utils/DragAndDrop;->dragActor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    goto/16 :goto_0

    :cond_6
    move-object v6, v9

    .line 136
    goto :goto_1
.end method
