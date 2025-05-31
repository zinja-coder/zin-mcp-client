.class Lde/fgerbig/spacepeng/systems/CollisionSystem$CollisionPair;
.super Ljava/lang/Object;
.source "CollisionSystem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/fgerbig/spacepeng/systems/CollisionSystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CollisionPair"
.end annotation


# instance fields
.field private groupEntitiesA:Lcom/artemis/utils/ImmutableBag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/artemis/utils/ImmutableBag",
            "<",
            "Lcom/artemis/Entity;",
            ">;"
        }
    .end annotation
.end field

.field private groupEntitiesB:Lcom/artemis/utils/ImmutableBag;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/artemis/utils/ImmutableBag",
            "<",
            "Lcom/artemis/Entity;",
            ">;"
        }
    .end annotation
.end field

.field private handler:Lde/fgerbig/spacepeng/systems/CollisionSystem$CollisionHandler;

.field final synthetic this$0:Lde/fgerbig/spacepeng/systems/CollisionSystem;


# direct methods
.method public constructor <init>(Lde/fgerbig/spacepeng/systems/CollisionSystem;Ljava/lang/String;Ljava/lang/String;Lde/fgerbig/spacepeng/systems/CollisionSystem$CollisionHandler;)V
    .locals 2
    .param p2, "group1"    # Ljava/lang/String;
    .param p3, "group2"    # Ljava/lang/String;
    .param p4, "handler"    # Lde/fgerbig/spacepeng/systems/CollisionSystem$CollisionHandler;

    .prologue
    .line 228
    iput-object p1, p0, Lde/fgerbig/spacepeng/systems/CollisionSystem$CollisionPair;->this$0:Lde/fgerbig/spacepeng/systems/CollisionSystem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 229
    invoke-static {p1}, Lde/fgerbig/spacepeng/systems/CollisionSystem;->access$600(Lde/fgerbig/spacepeng/systems/CollisionSystem;)Lcom/artemis/World;

    move-result-object v0

    const-class v1, Lcom/artemis/managers/GroupManager;

    invoke-virtual {v0, v1}, Lcom/artemis/World;->getManager(Ljava/lang/Class;)Lcom/artemis/Manager;

    move-result-object v0

    check-cast v0, Lcom/artemis/managers/GroupManager;

    invoke-virtual {v0, p2}, Lcom/artemis/managers/GroupManager;->getEntities(Ljava/lang/String;)Lcom/artemis/utils/ImmutableBag;

    move-result-object v0

    iput-object v0, p0, Lde/fgerbig/spacepeng/systems/CollisionSystem$CollisionPair;->groupEntitiesA:Lcom/artemis/utils/ImmutableBag;

    .line 230
    invoke-static {p1}, Lde/fgerbig/spacepeng/systems/CollisionSystem;->access$700(Lde/fgerbig/spacepeng/systems/CollisionSystem;)Lcom/artemis/World;

    move-result-object v0

    const-class v1, Lcom/artemis/managers/GroupManager;

    invoke-virtual {v0, v1}, Lcom/artemis/World;->getManager(Ljava/lang/Class;)Lcom/artemis/Manager;

    move-result-object v0

    check-cast v0, Lcom/artemis/managers/GroupManager;

    invoke-virtual {v0, p3}, Lcom/artemis/managers/GroupManager;->getEntities(Ljava/lang/String;)Lcom/artemis/utils/ImmutableBag;

    move-result-object v0

    iput-object v0, p0, Lde/fgerbig/spacepeng/systems/CollisionSystem$CollisionPair;->groupEntitiesB:Lcom/artemis/utils/ImmutableBag;

    .line 231
    iput-object p4, p0, Lde/fgerbig/spacepeng/systems/CollisionSystem$CollisionPair;->handler:Lde/fgerbig/spacepeng/systems/CollisionSystem$CollisionHandler;

    .line 232
    return-void
.end method

.method private collisionExists(Lcom/artemis/Entity;Lcom/artemis/Entity;)Z
    .locals 15
    .param p1, "e1"    # Lcom/artemis/Entity;
    .param p2, "e2"    # Lcom/artemis/Entity;

    .prologue
    .line 248
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 249
    :cond_0
    const/4 v11, 0x0

    .line 289
    :goto_0
    return v11

    .line 252
    :cond_1
    iget-object v11, p0, Lde/fgerbig/spacepeng/systems/CollisionSystem$CollisionPair;->this$0:Lde/fgerbig/spacepeng/systems/CollisionSystem;

    iget-object v11, v11, Lde/fgerbig/spacepeng/systems/CollisionSystem;->pos_cm:Lcom/artemis/ComponentMapper;

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Lcom/artemis/ComponentMapper;->getSafe(Lcom/artemis/Entity;)Lcom/artemis/Component;

    move-result-object v5

    check-cast v5, Lde/fgerbig/spacepeng/components/Position;

    .line 253
    .local v5, "p1":Lde/fgerbig/spacepeng/components/Position;
    iget-object v11, p0, Lde/fgerbig/spacepeng/systems/CollisionSystem$CollisionPair;->this$0:Lde/fgerbig/spacepeng/systems/CollisionSystem;

    iget-object v11, v11, Lde/fgerbig/spacepeng/systems/CollisionSystem;->pos_cm:Lcom/artemis/ComponentMapper;

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Lcom/artemis/ComponentMapper;->getSafe(Lcom/artemis/Entity;)Lcom/artemis/Component;

    move-result-object v6

    check-cast v6, Lde/fgerbig/spacepeng/components/Position;

    .line 255
    .local v6, "p2":Lde/fgerbig/spacepeng/components/Position;
    if-eqz v5, :cond_2

    if-nez v6, :cond_3

    .line 256
    :cond_2
    const/4 v11, 0x0

    goto :goto_0

    .line 260
    :cond_3
    iget-object v11, p0, Lde/fgerbig/spacepeng/systems/CollisionSystem$CollisionPair;->this$0:Lde/fgerbig/spacepeng/systems/CollisionSystem;

    iget-object v11, v11, Lde/fgerbig/spacepeng/systems/CollisionSystem;->circb_cm:Lcom/artemis/ComponentMapper;

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Lcom/artemis/ComponentMapper;->has(Lcom/artemis/Entity;)Z

    move-result v11

    if-eqz v11, :cond_4

    iget-object v11, p0, Lde/fgerbig/spacepeng/systems/CollisionSystem$CollisionPair;->this$0:Lde/fgerbig/spacepeng/systems/CollisionSystem;

    iget-object v11, v11, Lde/fgerbig/spacepeng/systems/CollisionSystem;->circb_cm:Lcom/artemis/ComponentMapper;

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Lcom/artemis/ComponentMapper;->has(Lcom/artemis/Entity;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 261
    iget-object v11, p0, Lde/fgerbig/spacepeng/systems/CollisionSystem$CollisionPair;->this$0:Lde/fgerbig/spacepeng/systems/CollisionSystem;

    iget-object v11, v11, Lde/fgerbig/spacepeng/systems/CollisionSystem;->circb_cm:Lcom/artemis/ComponentMapper;

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Lcom/artemis/ComponentMapper;->get(Lcom/artemis/Entity;)Lcom/artemis/Component;

    move-result-object v3

    check-cast v3, Lde/fgerbig/spacepeng/components/collision/CircleBounds;

    .line 262
    .local v3, "cb1":Lde/fgerbig/spacepeng/components/collision/CircleBounds;
    iget-object v11, p0, Lde/fgerbig/spacepeng/systems/CollisionSystem$CollisionPair;->this$0:Lde/fgerbig/spacepeng/systems/CollisionSystem;

    iget-object v11, v11, Lde/fgerbig/spacepeng/systems/CollisionSystem;->circb_cm:Lcom/artemis/ComponentMapper;

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Lcom/artemis/ComponentMapper;->get(Lcom/artemis/Entity;)Lcom/artemis/Component;

    move-result-object v4

    check-cast v4, Lde/fgerbig/spacepeng/components/collision/CircleBounds;

    .line 263
    .local v4, "cb2":Lde/fgerbig/spacepeng/components/collision/CircleBounds;
    new-instance v1, Lcom/badlogic/gdx/math/Circle;

    iget v11, v5, Lde/fgerbig/spacepeng/components/Position;->x:F

    iget v12, v5, Lde/fgerbig/spacepeng/components/Position;->y:F

    iget v13, v3, Lde/fgerbig/spacepeng/components/collision/CircleBounds;->radius:F

    invoke-direct {v1, v11, v12, v13}, Lcom/badlogic/gdx/math/Circle;-><init>(FFF)V

    .line 264
    .local v1, "c1":Lcom/badlogic/gdx/math/Circle;
    new-instance v2, Lcom/badlogic/gdx/math/Circle;

    iget v11, v6, Lde/fgerbig/spacepeng/components/Position;->x:F

    iget v12, v6, Lde/fgerbig/spacepeng/components/Position;->y:F

    iget v13, v4, Lde/fgerbig/spacepeng/components/collision/CircleBounds;->radius:F

    invoke-direct {v2, v11, v12, v13}, Lcom/badlogic/gdx/math/Circle;-><init>(FFF)V

    .line 265
    .local v2, "c2":Lcom/badlogic/gdx/math/Circle;
    invoke-static {v1, v2}, Lcom/badlogic/gdx/math/Intersector;->overlaps(Lcom/badlogic/gdx/math/Circle;Lcom/badlogic/gdx/math/Circle;)Z

    move-result v11

    goto :goto_0

    .line 267
    .end local v1    # "c1":Lcom/badlogic/gdx/math/Circle;
    .end local v2    # "c2":Lcom/badlogic/gdx/math/Circle;
    .end local v3    # "cb1":Lde/fgerbig/spacepeng/components/collision/CircleBounds;
    .end local v4    # "cb2":Lde/fgerbig/spacepeng/components/collision/CircleBounds;
    :cond_4
    iget-object v11, p0, Lde/fgerbig/spacepeng/systems/CollisionSystem$CollisionPair;->this$0:Lde/fgerbig/spacepeng/systems/CollisionSystem;

    iget-object v11, v11, Lde/fgerbig/spacepeng/systems/CollisionSystem;->circb_cm:Lcom/artemis/ComponentMapper;

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Lcom/artemis/ComponentMapper;->has(Lcom/artemis/Entity;)Z

    move-result v11

    if-eqz v11, :cond_5

    iget-object v11, p0, Lde/fgerbig/spacepeng/systems/CollisionSystem$CollisionPair;->this$0:Lde/fgerbig/spacepeng/systems/CollisionSystem;

    iget-object v11, v11, Lde/fgerbig/spacepeng/systems/CollisionSystem;->rectb_cm:Lcom/artemis/ComponentMapper;

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Lcom/artemis/ComponentMapper;->has(Lcom/artemis/Entity;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 268
    iget-object v11, p0, Lde/fgerbig/spacepeng/systems/CollisionSystem$CollisionPair;->this$0:Lde/fgerbig/spacepeng/systems/CollisionSystem;

    iget-object v11, v11, Lde/fgerbig/spacepeng/systems/CollisionSystem;->circb_cm:Lcom/artemis/ComponentMapper;

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Lcom/artemis/ComponentMapper;->get(Lcom/artemis/Entity;)Lcom/artemis/Component;

    move-result-object v3

    check-cast v3, Lde/fgerbig/spacepeng/components/collision/CircleBounds;

    .line 269
    .restart local v3    # "cb1":Lde/fgerbig/spacepeng/components/collision/CircleBounds;
    iget-object v11, p0, Lde/fgerbig/spacepeng/systems/CollisionSystem$CollisionPair;->this$0:Lde/fgerbig/spacepeng/systems/CollisionSystem;

    iget-object v11, v11, Lde/fgerbig/spacepeng/systems/CollisionSystem;->rectb_cm:Lcom/artemis/ComponentMapper;

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Lcom/artemis/ComponentMapper;->get(Lcom/artemis/Entity;)Lcom/artemis/Component;

    move-result-object v10

    check-cast v10, Lde/fgerbig/spacepeng/components/collision/RectangleBounds;

    .line 270
    .local v10, "rb2":Lde/fgerbig/spacepeng/components/collision/RectangleBounds;
    new-instance v1, Lcom/badlogic/gdx/math/Circle;

    iget v11, v5, Lde/fgerbig/spacepeng/components/Position;->x:F

    iget v12, v5, Lde/fgerbig/spacepeng/components/Position;->y:F

    iget v13, v3, Lde/fgerbig/spacepeng/components/collision/CircleBounds;->radius:F

    invoke-direct {v1, v11, v12, v13}, Lcom/badlogic/gdx/math/Circle;-><init>(FFF)V

    .line 271
    .restart local v1    # "c1":Lcom/badlogic/gdx/math/Circle;
    new-instance v8, Lcom/badlogic/gdx/math/Rectangle;

    iget v11, v6, Lde/fgerbig/spacepeng/components/Position;->x:F

    iget v12, v10, Lde/fgerbig/spacepeng/components/collision/RectangleBounds;->width:F

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v12, v13

    sub-float/2addr v11, v12

    iget v12, v6, Lde/fgerbig/spacepeng/components/Position;->y:F

    iget v13, v10, Lde/fgerbig/spacepeng/components/collision/RectangleBounds;->height:F

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v13, v14

    sub-float/2addr v12, v13

    iget v13, v10, Lde/fgerbig/spacepeng/components/collision/RectangleBounds;->width:F

    iget v14, v10, Lde/fgerbig/spacepeng/components/collision/RectangleBounds;->height:F

    invoke-direct {v8, v11, v12, v13, v14}, Lcom/badlogic/gdx/math/Rectangle;-><init>(FFFF)V

    .line 272
    .local v8, "r2":Lcom/badlogic/gdx/math/Rectangle;
    invoke-static {v1, v8}, Lcom/badlogic/gdx/math/Intersector;->overlaps(Lcom/badlogic/gdx/math/Circle;Lcom/badlogic/gdx/math/Rectangle;)Z

    move-result v11

    goto/16 :goto_0

    .line 274
    .end local v1    # "c1":Lcom/badlogic/gdx/math/Circle;
    .end local v3    # "cb1":Lde/fgerbig/spacepeng/components/collision/CircleBounds;
    .end local v8    # "r2":Lcom/badlogic/gdx/math/Rectangle;
    .end local v10    # "rb2":Lde/fgerbig/spacepeng/components/collision/RectangleBounds;
    :cond_5
    iget-object v11, p0, Lde/fgerbig/spacepeng/systems/CollisionSystem$CollisionPair;->this$0:Lde/fgerbig/spacepeng/systems/CollisionSystem;

    iget-object v11, v11, Lde/fgerbig/spacepeng/systems/CollisionSystem;->rectb_cm:Lcom/artemis/ComponentMapper;

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Lcom/artemis/ComponentMapper;->has(Lcom/artemis/Entity;)Z

    move-result v11

    if-eqz v11, :cond_6

    iget-object v11, p0, Lde/fgerbig/spacepeng/systems/CollisionSystem$CollisionPair;->this$0:Lde/fgerbig/spacepeng/systems/CollisionSystem;

    iget-object v11, v11, Lde/fgerbig/spacepeng/systems/CollisionSystem;->circb_cm:Lcom/artemis/ComponentMapper;

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Lcom/artemis/ComponentMapper;->has(Lcom/artemis/Entity;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 275
    iget-object v11, p0, Lde/fgerbig/spacepeng/systems/CollisionSystem$CollisionPair;->this$0:Lde/fgerbig/spacepeng/systems/CollisionSystem;

    iget-object v11, v11, Lde/fgerbig/spacepeng/systems/CollisionSystem;->rectb_cm:Lcom/artemis/ComponentMapper;

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Lcom/artemis/ComponentMapper;->get(Lcom/artemis/Entity;)Lcom/artemis/Component;

    move-result-object v9

    check-cast v9, Lde/fgerbig/spacepeng/components/collision/RectangleBounds;

    .line 276
    .local v9, "rb1":Lde/fgerbig/spacepeng/components/collision/RectangleBounds;
    iget-object v11, p0, Lde/fgerbig/spacepeng/systems/CollisionSystem$CollisionPair;->this$0:Lde/fgerbig/spacepeng/systems/CollisionSystem;

    iget-object v11, v11, Lde/fgerbig/spacepeng/systems/CollisionSystem;->circb_cm:Lcom/artemis/ComponentMapper;

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Lcom/artemis/ComponentMapper;->get(Lcom/artemis/Entity;)Lcom/artemis/Component;

    move-result-object v4

    check-cast v4, Lde/fgerbig/spacepeng/components/collision/CircleBounds;

    .line 277
    .restart local v4    # "cb2":Lde/fgerbig/spacepeng/components/collision/CircleBounds;
    new-instance v7, Lcom/badlogic/gdx/math/Rectangle;

    iget v11, v5, Lde/fgerbig/spacepeng/components/Position;->x:F

    iget v12, v9, Lde/fgerbig/spacepeng/components/collision/RectangleBounds;->width:F

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v12, v13

    sub-float/2addr v11, v12

    iget v12, v5, Lde/fgerbig/spacepeng/components/Position;->y:F

    iget v13, v9, Lde/fgerbig/spacepeng/components/collision/RectangleBounds;->height:F

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v13, v14

    sub-float/2addr v12, v13

    iget v13, v9, Lde/fgerbig/spacepeng/components/collision/RectangleBounds;->width:F

    iget v14, v9, Lde/fgerbig/spacepeng/components/collision/RectangleBounds;->height:F

    invoke-direct {v7, v11, v12, v13, v14}, Lcom/badlogic/gdx/math/Rectangle;-><init>(FFFF)V

    .line 278
    .local v7, "r1":Lcom/badlogic/gdx/math/Rectangle;
    new-instance v2, Lcom/badlogic/gdx/math/Circle;

    iget v11, v6, Lde/fgerbig/spacepeng/components/Position;->x:F

    iget v12, v6, Lde/fgerbig/spacepeng/components/Position;->y:F

    iget v13, v4, Lde/fgerbig/spacepeng/components/collision/CircleBounds;->radius:F

    invoke-direct {v2, v11, v12, v13}, Lcom/badlogic/gdx/math/Circle;-><init>(FFF)V

    .line 279
    .restart local v2    # "c2":Lcom/badlogic/gdx/math/Circle;
    invoke-static {v2, v7}, Lcom/badlogic/gdx/math/Intersector;->overlaps(Lcom/badlogic/gdx/math/Circle;Lcom/badlogic/gdx/math/Rectangle;)Z

    move-result v11

    goto/16 :goto_0

    .line 281
    .end local v2    # "c2":Lcom/badlogic/gdx/math/Circle;
    .end local v4    # "cb2":Lde/fgerbig/spacepeng/components/collision/CircleBounds;
    .end local v7    # "r1":Lcom/badlogic/gdx/math/Rectangle;
    .end local v9    # "rb1":Lde/fgerbig/spacepeng/components/collision/RectangleBounds;
    :cond_6
    iget-object v11, p0, Lde/fgerbig/spacepeng/systems/CollisionSystem$CollisionPair;->this$0:Lde/fgerbig/spacepeng/systems/CollisionSystem;

    iget-object v11, v11, Lde/fgerbig/spacepeng/systems/CollisionSystem;->rectb_cm:Lcom/artemis/ComponentMapper;

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Lcom/artemis/ComponentMapper;->has(Lcom/artemis/Entity;)Z

    move-result v11

    if-eqz v11, :cond_7

    iget-object v11, p0, Lde/fgerbig/spacepeng/systems/CollisionSystem$CollisionPair;->this$0:Lde/fgerbig/spacepeng/systems/CollisionSystem;

    iget-object v11, v11, Lde/fgerbig/spacepeng/systems/CollisionSystem;->rectb_cm:Lcom/artemis/ComponentMapper;

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Lcom/artemis/ComponentMapper;->has(Lcom/artemis/Entity;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 282
    iget-object v11, p0, Lde/fgerbig/spacepeng/systems/CollisionSystem$CollisionPair;->this$0:Lde/fgerbig/spacepeng/systems/CollisionSystem;

    iget-object v11, v11, Lde/fgerbig/spacepeng/systems/CollisionSystem;->rectb_cm:Lcom/artemis/ComponentMapper;

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Lcom/artemis/ComponentMapper;->get(Lcom/artemis/Entity;)Lcom/artemis/Component;

    move-result-object v9

    check-cast v9, Lde/fgerbig/spacepeng/components/collision/RectangleBounds;

    .line 283
    .restart local v9    # "rb1":Lde/fgerbig/spacepeng/components/collision/RectangleBounds;
    iget-object v11, p0, Lde/fgerbig/spacepeng/systems/CollisionSystem$CollisionPair;->this$0:Lde/fgerbig/spacepeng/systems/CollisionSystem;

    iget-object v11, v11, Lde/fgerbig/spacepeng/systems/CollisionSystem;->rectb_cm:Lcom/artemis/ComponentMapper;

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Lcom/artemis/ComponentMapper;->get(Lcom/artemis/Entity;)Lcom/artemis/Component;

    move-result-object v10

    check-cast v10, Lde/fgerbig/spacepeng/components/collision/RectangleBounds;

    .line 284
    .restart local v10    # "rb2":Lde/fgerbig/spacepeng/components/collision/RectangleBounds;
    new-instance v7, Lcom/badlogic/gdx/math/Rectangle;

    iget v11, v5, Lde/fgerbig/spacepeng/components/Position;->x:F

    iget v12, v9, Lde/fgerbig/spacepeng/components/collision/RectangleBounds;->width:F

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v12, v13

    sub-float/2addr v11, v12

    iget v12, v5, Lde/fgerbig/spacepeng/components/Position;->y:F

    iget v13, v9, Lde/fgerbig/spacepeng/components/collision/RectangleBounds;->height:F

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v13, v14

    sub-float/2addr v12, v13

    iget v13, v9, Lde/fgerbig/spacepeng/components/collision/RectangleBounds;->width:F

    iget v14, v9, Lde/fgerbig/spacepeng/components/collision/RectangleBounds;->height:F

    invoke-direct {v7, v11, v12, v13, v14}, Lcom/badlogic/gdx/math/Rectangle;-><init>(FFFF)V

    .line 285
    .restart local v7    # "r1":Lcom/badlogic/gdx/math/Rectangle;
    new-instance v8, Lcom/badlogic/gdx/math/Rectangle;

    iget v11, v6, Lde/fgerbig/spacepeng/components/Position;->x:F

    iget v12, v10, Lde/fgerbig/spacepeng/components/collision/RectangleBounds;->width:F

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v12, v13

    sub-float/2addr v11, v12

    iget v12, v6, Lde/fgerbig/spacepeng/components/Position;->y:F

    iget v13, v10, Lde/fgerbig/spacepeng/components/collision/RectangleBounds;->height:F

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v13, v14

    sub-float/2addr v12, v13

    iget v13, v10, Lde/fgerbig/spacepeng/components/collision/RectangleBounds;->width:F

    iget v14, v10, Lde/fgerbig/spacepeng/components/collision/RectangleBounds;->height:F

    invoke-direct {v8, v11, v12, v13, v14}, Lcom/badlogic/gdx/math/Rectangle;-><init>(FFFF)V

    .line 286
    .restart local v8    # "r2":Lcom/badlogic/gdx/math/Rectangle;
    invoke-static {v7, v8}, Lcom/badlogic/gdx/math/Intersector;->overlaps(Lcom/badlogic/gdx/math/Rectangle;Lcom/badlogic/gdx/math/Rectangle;)Z

    move-result v11

    goto/16 :goto_0

    .line 289
    .end local v7    # "r1":Lcom/badlogic/gdx/math/Rectangle;
    .end local v8    # "r2":Lcom/badlogic/gdx/math/Rectangle;
    .end local v9    # "rb1":Lde/fgerbig/spacepeng/components/collision/RectangleBounds;
    .end local v10    # "rb2":Lde/fgerbig/spacepeng/components/collision/RectangleBounds;
    :cond_7
    const/4 v11, 0x0

    goto/16 :goto_0
.end method


# virtual methods
.method public checkForCollisions()V
    .locals 5

    .prologue
    .line 235
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    iget-object v4, p0, Lde/fgerbig/spacepeng/systems/CollisionSystem$CollisionPair;->groupEntitiesA:Lcom/artemis/utils/ImmutableBag;

    invoke-interface {v4}, Lcom/artemis/utils/ImmutableBag;->size()I

    move-result v4

    if-le v4, v0, :cond_2

    .line 236
    const/4 v1, 0x0

    .local v1, "b":I
    :goto_1
    iget-object v4, p0, Lde/fgerbig/spacepeng/systems/CollisionSystem$CollisionPair;->groupEntitiesB:Lcom/artemis/utils/ImmutableBag;

    invoke-interface {v4}, Lcom/artemis/utils/ImmutableBag;->size()I

    move-result v4

    if-le v4, v1, :cond_1

    .line 237
    iget-object v4, p0, Lde/fgerbig/spacepeng/systems/CollisionSystem$CollisionPair;->groupEntitiesA:Lcom/artemis/utils/ImmutableBag;

    invoke-interface {v4, v0}, Lcom/artemis/utils/ImmutableBag;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/artemis/Entity;

    .line 238
    .local v2, "entityA":Lcom/artemis/Entity;
    iget-object v4, p0, Lde/fgerbig/spacepeng/systems/CollisionSystem$CollisionPair;->groupEntitiesB:Lcom/artemis/utils/ImmutableBag;

    invoke-interface {v4, v1}, Lcom/artemis/utils/ImmutableBag;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/artemis/Entity;

    .line 239
    .local v3, "entityB":Lcom/artemis/Entity;
    invoke-direct {p0, v2, v3}, Lde/fgerbig/spacepeng/systems/CollisionSystem$CollisionPair;->collisionExists(Lcom/artemis/Entity;Lcom/artemis/Entity;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 240
    iget-object v4, p0, Lde/fgerbig/spacepeng/systems/CollisionSystem$CollisionPair;->handler:Lde/fgerbig/spacepeng/systems/CollisionSystem$CollisionHandler;

    invoke-interface {v4, v2, v3}, Lde/fgerbig/spacepeng/systems/CollisionSystem$CollisionHandler;->handleCollision(Lcom/artemis/Entity;Lcom/artemis/Entity;)V

    .line 236
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 235
    .end local v2    # "entityA":Lcom/artemis/Entity;
    .end local v3    # "entityB":Lcom/artemis/Entity;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 244
    .end local v1    # "b":I
    :cond_2
    return-void
.end method
