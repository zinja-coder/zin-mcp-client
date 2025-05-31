.class public Lde/fgerbig/spacepeng/systems/BoundsRenderSystem;
.super Lcom/artemis/systems/EntityProcessingSystem;
.source "BoundsRenderSystem.java"


# static fields
.field private static final debugColor:Lcom/badlogic/gdx/graphics/Color;


# instance fields
.field private batch:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

.field private camera:Lcom/badlogic/gdx/graphics/OrthographicCamera;

.field cbm:Lcom/artemis/ComponentMapper;
    .annotation runtime Lcom/artemis/annotations/Wire;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/artemis/ComponentMapper",
            "<",
            "Lde/fgerbig/spacepeng/components/collision/CircleBounds;",
            ">;"
        }
    .end annotation
.end field

.field private debugShapes:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;

.field pm:Lcom/artemis/ComponentMapper;
    .annotation runtime Lcom/artemis/annotations/Wire;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/artemis/ComponentMapper",
            "<",
            "Lde/fgerbig/spacepeng/components/Position;",
            ">;"
        }
    .end annotation
.end field

.field rbm:Lcom/artemis/ComponentMapper;
    .annotation runtime Lcom/artemis/annotations/Wire;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/artemis/ComponentMapper",
            "<",
            "Lde/fgerbig/spacepeng/components/collision/RectangleBounds;",
            ">;"
        }
    .end annotation
.end field

.field sm:Lcom/artemis/ComponentMapper;
    .annotation runtime Lcom/artemis/annotations/Wire;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/artemis/ComponentMapper",
            "<",
            "Lde/fgerbig/spacepeng/components/Sprite;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 44
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3f59999a    # 0.85f

    invoke-direct {v0, v3, v1, v3, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    sput-object v0, Lde/fgerbig/spacepeng/systems/BoundsRenderSystem;->debugColor:Lcom/badlogic/gdx/graphics/Color;

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/OrthographicCamera;Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;)V
    .locals 5
    .param p1, "camera"    # Lcom/badlogic/gdx/graphics/OrthographicCamera;
    .param p2, "batch"    # Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 52
    new-array v0, v2, [Ljava/lang/Class;

    const-class v1, Lde/fgerbig/spacepeng/components/Position;

    aput-object v1, v0, v3

    const-class v1, Lde/fgerbig/spacepeng/components/Sprite;

    aput-object v1, v0, v4

    invoke-static {v0}, Lcom/artemis/Aspect;->getAspectForAll([Ljava/lang/Class;)Lcom/artemis/Aspect;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Class;

    const-class v2, Lde/fgerbig/spacepeng/components/collision/CircleBounds;

    aput-object v2, v1, v3

    const-class v2, Lde/fgerbig/spacepeng/components/collision/RectangleBounds;

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/artemis/Aspect;->one([Ljava/lang/Class;)Lcom/artemis/Aspect;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/artemis/systems/EntityProcessingSystem;-><init>(Lcom/artemis/Aspect;)V

    .line 53
    iput-object p1, p0, Lde/fgerbig/spacepeng/systems/BoundsRenderSystem;->camera:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    .line 54
    iput-object p2, p0, Lde/fgerbig/spacepeng/systems/BoundsRenderSystem;->batch:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    .line 55
    return-void
.end method


# virtual methods
.method protected begin()V
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lde/fgerbig/spacepeng/systems/BoundsRenderSystem;->camera:Lcom/badlogic/gdx/graphics/OrthographicCamera;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/OrthographicCamera;->update()V

    .line 65
    iget-object v0, p0, Lde/fgerbig/spacepeng/systems/BoundsRenderSystem;->debugShapes:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;

    sget-object v1, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->Line:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->begin(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;)V

    .line 66
    iget-object v0, p0, Lde/fgerbig/spacepeng/systems/BoundsRenderSystem;->debugShapes:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;

    sget-object v1, Lde/fgerbig/spacepeng/systems/BoundsRenderSystem;->debugColor:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 67
    return-void
.end method

.method protected drawCircleBounds(Lcom/artemis/Entity;)V
    .locals 7
    .param p1, "e"    # Lcom/artemis/Entity;

    .prologue
    .line 85
    iget-object v3, p0, Lde/fgerbig/spacepeng/systems/BoundsRenderSystem;->pm:Lcom/artemis/ComponentMapper;

    invoke-virtual {v3, p1}, Lcom/artemis/ComponentMapper;->get(Lcom/artemis/Entity;)Lcom/artemis/Component;

    move-result-object v1

    check-cast v1, Lde/fgerbig/spacepeng/components/Position;

    .line 86
    .local v1, "position":Lde/fgerbig/spacepeng/components/Position;
    iget-object v3, p0, Lde/fgerbig/spacepeng/systems/BoundsRenderSystem;->cbm:Lcom/artemis/ComponentMapper;

    invoke-virtual {v3, p1}, Lcom/artemis/ComponentMapper;->get(Lcom/artemis/Entity;)Lcom/artemis/Component;

    move-result-object v0

    check-cast v0, Lde/fgerbig/spacepeng/components/collision/CircleBounds;

    .line 87
    .local v0, "cb":Lde/fgerbig/spacepeng/components/collision/CircleBounds;
    iget-object v3, p0, Lde/fgerbig/spacepeng/systems/BoundsRenderSystem;->sm:Lcom/artemis/ComponentMapper;

    invoke-virtual {v3, p1}, Lcom/artemis/ComponentMapper;->get(Lcom/artemis/Entity;)Lcom/artemis/Component;

    move-result-object v2

    check-cast v2, Lde/fgerbig/spacepeng/components/Sprite;

    .line 89
    .local v2, "sprite":Lde/fgerbig/spacepeng/components/Sprite;
    iget-object v3, p0, Lde/fgerbig/spacepeng/systems/BoundsRenderSystem;->debugShapes:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;

    iget v4, v1, Lde/fgerbig/spacepeng/components/Position;->x:F

    iget v5, v1, Lde/fgerbig/spacepeng/components/Position;->y:F

    iget v6, v0, Lde/fgerbig/spacepeng/components/collision/CircleBounds;->radius:F

    invoke-virtual {v3, v4, v5, v6}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->circle(FFF)V

    .line 90
    return-void
.end method

.method protected drawRectangleBounds(Lcom/artemis/Entity;)V
    .locals 8
    .param p1, "e"    # Lcom/artemis/Entity;

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    .line 93
    iget-object v3, p0, Lde/fgerbig/spacepeng/systems/BoundsRenderSystem;->pm:Lcom/artemis/ComponentMapper;

    invoke-virtual {v3, p1}, Lcom/artemis/ComponentMapper;->get(Lcom/artemis/Entity;)Lcom/artemis/Component;

    move-result-object v0

    check-cast v0, Lde/fgerbig/spacepeng/components/Position;

    .line 94
    .local v0, "position":Lde/fgerbig/spacepeng/components/Position;
    iget-object v3, p0, Lde/fgerbig/spacepeng/systems/BoundsRenderSystem;->rbm:Lcom/artemis/ComponentMapper;

    invoke-virtual {v3, p1}, Lcom/artemis/ComponentMapper;->get(Lcom/artemis/Entity;)Lcom/artemis/Component;

    move-result-object v1

    check-cast v1, Lde/fgerbig/spacepeng/components/collision/RectangleBounds;

    .line 95
    .local v1, "rb":Lde/fgerbig/spacepeng/components/collision/RectangleBounds;
    iget-object v3, p0, Lde/fgerbig/spacepeng/systems/BoundsRenderSystem;->sm:Lcom/artemis/ComponentMapper;

    invoke-virtual {v3, p1}, Lcom/artemis/ComponentMapper;->get(Lcom/artemis/Entity;)Lcom/artemis/Component;

    move-result-object v2

    check-cast v2, Lde/fgerbig/spacepeng/components/Sprite;

    .line 97
    .local v2, "sprite":Lde/fgerbig/spacepeng/components/Sprite;
    iget-object v3, p0, Lde/fgerbig/spacepeng/systems/BoundsRenderSystem;->debugShapes:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;

    iget v4, v0, Lde/fgerbig/spacepeng/components/Position;->x:F

    iget v5, v1, Lde/fgerbig/spacepeng/components/collision/RectangleBounds;->width:F

    div-float/2addr v5, v7

    sub-float/2addr v4, v5

    iget v5, v0, Lde/fgerbig/spacepeng/components/Position;->y:F

    iget v6, v1, Lde/fgerbig/spacepeng/components/collision/RectangleBounds;->height:F

    div-float/2addr v6, v7

    sub-float/2addr v5, v6

    iget v6, v1, Lde/fgerbig/spacepeng/components/collision/RectangleBounds;->width:F

    iget v7, v1, Lde/fgerbig/spacepeng/components/collision/RectangleBounds;->height:F

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->rect(FFFF)V

    .line 98
    return-void
.end method

.method protected end()V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lde/fgerbig/spacepeng/systems/BoundsRenderSystem;->debugShapes:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->end()V

    .line 82
    return-void
.end method

.method public initialize()V
    .locals 1

    .prologue
    .line 59
    new-instance v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;-><init>()V

    iput-object v0, p0, Lde/fgerbig/spacepeng/systems/BoundsRenderSystem;->debugShapes:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;

    .line 60
    return-void
.end method

.method protected process(Lcom/artemis/Entity;)V
    .locals 1
    .param p1, "e"    # Lcom/artemis/Entity;

    .prologue
    .line 71
    iget-object v0, p0, Lde/fgerbig/spacepeng/systems/BoundsRenderSystem;->cbm:Lcom/artemis/ComponentMapper;

    invoke-virtual {v0, p1}, Lcom/artemis/ComponentMapper;->has(Lcom/artemis/Entity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {p0, p1}, Lde/fgerbig/spacepeng/systems/BoundsRenderSystem;->drawCircleBounds(Lcom/artemis/Entity;)V

    .line 74
    :cond_0
    iget-object v0, p0, Lde/fgerbig/spacepeng/systems/BoundsRenderSystem;->rbm:Lcom/artemis/ComponentMapper;

    invoke-virtual {v0, p1}, Lcom/artemis/ComponentMapper;->has(Lcom/artemis/Entity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 75
    invoke-virtual {p0, p1}, Lde/fgerbig/spacepeng/systems/BoundsRenderSystem;->drawRectangleBounds(Lcom/artemis/Entity;)V

    .line 77
    :cond_1
    return-void
.end method
