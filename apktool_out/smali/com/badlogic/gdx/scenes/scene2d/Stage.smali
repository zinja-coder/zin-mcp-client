.class public Lcom/badlogic/gdx/scenes/scene2d/Stage;
.super Lcom/badlogic/gdx/InputAdapter;
.source "Stage.java"

# interfaces
.implements Lcom/badlogic/gdx/utils/Disposable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;
    }
.end annotation


# static fields
.field static debug:Z


# instance fields
.field private actionsRequestRendering:Z

.field private final batch:Lcom/badlogic/gdx/graphics/g2d/Batch;

.field private debugAll:Z

.field private final debugColor:Lcom/badlogic/gdx/graphics/Color;

.field private debugInvisible:Z

.field private debugParentUnderMouse:Z

.field private debugShapes:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;

.field private debugTableUnderMouse:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

.field private debugUnderMouse:Z

.field private keyboardFocus:Lcom/badlogic/gdx/scenes/scene2d/Actor;

.field private mouseOverActor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

.field private mouseScreenX:I

.field private mouseScreenY:I

.field private ownsBatch:Z

.field private final pointerOverActors:[Lcom/badlogic/gdx/scenes/scene2d/Actor;

.field private final pointerScreenX:[I

.field private final pointerScreenY:[I

.field private final pointerTouched:[Z

.field private final root:Lcom/badlogic/gdx/scenes/scene2d/Group;

.field private scrollFocus:Lcom/badlogic/gdx/scenes/scene2d/Actor;

.field private final tempCoords:Lcom/badlogic/gdx/math/Vector2;

.field private final touchFocuses:Lcom/badlogic/gdx/utils/SnapshotArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/SnapshotArray",
            "<",
            "Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;",
            ">;"
        }
    .end annotation
.end field

.field private viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    .line 91
    new-instance v0, Lcom/badlogic/gdx/utils/viewport/ScalingViewport;

    sget-object v1, Lcom/badlogic/gdx/utils/Scaling;->stretch:Lcom/badlogic/gdx/utils/Scaling;

    sget-object v2, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v2}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sget-object v3, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v3}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v3

    int-to-float v3, v3

    new-instance v4, Lcom/badlogic/gdx/graphics/OrthographicCamera;

    invoke-direct {v4}, Lcom/badlogic/gdx/graphics/OrthographicCamera;-><init>()V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/utils/viewport/ScalingViewport;-><init>(Lcom/badlogic/gdx/utils/Scaling;FFLcom/badlogic/gdx/graphics/Camera;)V

    new-instance v1, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-direct {v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Stage;-><init>(Lcom/badlogic/gdx/utils/viewport/Viewport;Lcom/badlogic/gdx/graphics/g2d/Batch;)V

    .line 93
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->ownsBatch:Z

    .line 94
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/utils/viewport/Viewport;)V
    .locals 1
    .param p1, "viewport"    # Lcom/badlogic/gdx/utils/viewport/Viewport;

    .prologue
    .line 99
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;-><init>(Lcom/badlogic/gdx/utils/viewport/Viewport;Lcom/badlogic/gdx/graphics/g2d/Batch;)V

    .line 100
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->ownsBatch:Z

    .line 101
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/utils/viewport/Viewport;Lcom/badlogic/gdx/graphics/g2d/Batch;)V
    .locals 5
    .param p1, "viewport"    # Lcom/badlogic/gdx/utils/viewport/Viewport;
    .param p2, "batch"    # Lcom/badlogic/gdx/graphics/g2d/Batch;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/16 v1, 0x14

    .line 106
    invoke-direct {p0}, Lcom/badlogic/gdx/InputAdapter;-><init>()V

    .line 72
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->tempCoords:Lcom/badlogic/gdx/math/Vector2;

    .line 73
    new-array v0, v1, [Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->pointerOverActors:[Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 74
    new-array v0, v1, [Z

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->pointerTouched:[Z

    .line 75
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->pointerScreenX:[I

    .line 76
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->pointerScreenY:[I

    .line 80
    new-instance v0, Lcom/badlogic/gdx/utils/SnapshotArray;

    const/4 v1, 0x4

    const-class v2, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;

    invoke-direct {v0, v3, v1, v2}, Lcom/badlogic/gdx/utils/SnapshotArray;-><init>(ZILjava/lang/Class;)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->touchFocuses:Lcom/badlogic/gdx/utils/SnapshotArray;

    .line 81
    iput-boolean v3, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->actionsRequestRendering:Z

    .line 85
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;->none:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->debugTableUnderMouse:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    .line 86
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3f59999a    # 0.85f

    invoke-direct {v0, v4, v1, v4, v2}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->debugColor:Lcom/badlogic/gdx/graphics/Color;

    .line 107
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "viewport cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 108
    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "batch cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :cond_1
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    .line 110
    iput-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->batch:Lcom/badlogic/gdx/graphics/g2d/Batch;

    .line 112
    new-instance v0, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->root:Lcom/badlogic/gdx/scenes/scene2d/Group;

    .line 113
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->root:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setStage(Lcom/badlogic/gdx/scenes/scene2d/Stage;)V

    .line 115
    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v0

    sget-object v1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v1}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v1

    invoke-virtual {p1, v0, v1, v3}, Lcom/badlogic/gdx/utils/viewport/Viewport;->update(IIZ)V

    .line 116
    return-void
.end method

.method private disableDebug(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 4
    .param p1, "actor"    # Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .param p2, "except"    # Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .prologue
    .line 175
    if-ne p1, p2, :cond_1

    .line 182
    .end local p1    # "actor":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    :cond_0
    return-void

    .line 176
    .restart local p1    # "actor":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setDebug(Z)V

    .line 177
    instance-of v3, p1, Lcom/badlogic/gdx/scenes/scene2d/Group;

    if-eqz v3, :cond_0

    .line 178
    check-cast p1, Lcom/badlogic/gdx/scenes/scene2d/Group;

    .end local p1    # "actor":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Lcom/badlogic/gdx/utils/SnapshotArray;

    .line 179
    .local v0, "children":Lcom/badlogic/gdx/utils/SnapshotArray;, "Lcom/badlogic/gdx/utils/SnapshotArray<Lcom/badlogic/gdx/scenes/scene2d/Actor;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    iget v2, v0, Lcom/badlogic/gdx/utils/SnapshotArray;->size:I

    .local v2, "n":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 180
    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/SnapshotArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-direct {p0, v3, p2}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->disableDebug(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 179
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private drawDebug()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 136
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->debugShapes:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;

    if-nez v1, :cond_0

    .line 137
    new-instance v1, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;

    invoke-direct {v1}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;-><init>()V

    iput-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->debugShapes:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;

    .line 138
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->debugShapes:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;

    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->setAutoShapeType(Z)V

    .line 141
    :cond_0
    iget-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->debugUnderMouse:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->debugParentUnderMouse:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->debugTableUnderMouse:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    sget-object v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;->none:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    if-eq v1, v2, :cond_a

    .line 142
    :cond_1
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->tempCoords:Lcom/badlogic/gdx/math/Vector2;

    sget-object v2, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    invoke-interface {v2}, Lcom/badlogic/gdx/Input;->getX()I

    move-result v2

    int-to-float v2, v2

    sget-object v3, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    invoke-interface {v3}, Lcom/badlogic/gdx/Input;->getY()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->screenToStageCoordinates(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    .line 143
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->tempCoords:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->tempCoords:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {p0, v1, v2, v4}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->hit(FFZ)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v0

    .line 144
    .local v0, "actor":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    if-nez v0, :cond_3

    .line 171
    .end local v0    # "actor":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    :cond_2
    :goto_0
    return-void

    .line 146
    .restart local v0    # "actor":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    :cond_3
    iget-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->debugParentUnderMouse:Z

    if-eqz v1, :cond_4

    iget-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

    if-eqz v1, :cond_4

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

    .line 148
    :cond_4
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->debugTableUnderMouse:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    sget-object v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;->none:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    if-ne v1, v2, :cond_8

    .line 149
    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->setDebug(Z)V

    .line 159
    :goto_1
    iget-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->debugAll:Z

    if-eqz v1, :cond_5

    instance-of v1, v0, Lcom/badlogic/gdx/scenes/scene2d/Group;

    if-eqz v1, :cond_5

    move-object v1, v0

    check-cast v1, Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->debugAll()Lcom/badlogic/gdx/scenes/scene2d/Group;

    .line 161
    :cond_5
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->root:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-direct {p0, v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->disableDebug(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 166
    .end local v0    # "actor":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    :cond_6
    :goto_2
    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const/16 v2, 0xbe2

    invoke-interface {v1, v2}, Lcom/badlogic/gdx/graphics/GL20;->glEnable(I)V

    .line 167
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->debugShapes:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/viewport/Viewport;->getCamera()Lcom/badlogic/gdx/graphics/Camera;

    move-result-object v2

    iget-object v2, v2, Lcom/badlogic/gdx/graphics/Camera;->combined:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->setProjectionMatrix(Lcom/badlogic/gdx/math/Matrix4;)V

    .line 168
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->debugShapes:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->begin()V

    .line 169
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->root:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->debugShapes:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->drawDebug(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;)V

    .line 170
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->debugShapes:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->end()V

    goto :goto_0

    .line 153
    .restart local v0    # "actor":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    :cond_7
    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/Actor;->parent:Lcom/badlogic/gdx/scenes/scene2d/Group;

    .line 151
    :cond_8
    if-eqz v0, :cond_9

    .line 152
    instance-of v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    if-eqz v1, :cond_7

    .line 155
    :cond_9
    if-eqz v0, :cond_2

    move-object v1, v0

    .line 156
    check-cast v1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->debugTableUnderMouse:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Table;->debug(Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;)Lcom/badlogic/gdx/scenes/scene2d/ui/Table;

    goto :goto_1

    .line 163
    .end local v0    # "actor":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    :cond_a
    iget-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->debugAll:Z

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->root:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->debugAll()Lcom/badlogic/gdx/scenes/scene2d/Group;

    goto :goto_2
.end method

.method private fireEnterAndExit(Lcom/badlogic/gdx/scenes/scene2d/Actor;III)Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 5
    .param p1, "overLast"    # Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .param p2, "screenX"    # I
    .param p3, "screenY"    # I
    .param p4, "pointer"    # I

    .prologue
    .line 228
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->tempCoords:Lcom/badlogic/gdx/math/Vector2;

    int-to-float v3, p2

    int-to-float v4, p3

    invoke-virtual {v2, v3, v4}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->screenToStageCoordinates(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    .line 229
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->tempCoords:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->tempCoords:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    const/4 v4, 0x1

    invoke-virtual {p0, v2, v3, v4}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->hit(FFZ)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v1

    .line 230
    .local v1, "over":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    if-ne v1, p1, :cond_0

    .line 250
    .end local p1    # "overLast":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    :goto_0
    return-object p1

    .line 232
    .restart local p1    # "overLast":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    :cond_0
    const-class v2, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;

    invoke-static {v2}, Lcom/badlogic/gdx/utils/Pools;->obtain(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;

    .line 233
    .local v0, "event":Lcom/badlogic/gdx/scenes/scene2d/InputEvent;
    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setStage(Lcom/badlogic/gdx/scenes/scene2d/Stage;)V

    .line 234
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->tempCoords:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setStageX(F)V

    .line 235
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->tempCoords:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setStageY(F)V

    .line 236
    invoke-virtual {v0, p4}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setPointer(I)V

    .line 238
    if-eqz p1, :cond_1

    .line 239
    sget-object v2, Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;->exit:Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setType(Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;)V

    .line 240
    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setRelatedActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 241
    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->fire(Lcom/badlogic/gdx/scenes/scene2d/Event;)Z

    .line 244
    :cond_1
    if-eqz v1, :cond_2

    .line 245
    sget-object v2, Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;->enter:Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setType(Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;)V

    .line 246
    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setRelatedActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 247
    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->fire(Lcom/badlogic/gdx/scenes/scene2d/Event;)Z

    .line 249
    :cond_2
    invoke-static {v0}, Lcom/badlogic/gdx/utils/Pools;->free(Ljava/lang/Object;)V

    move-object p1, v1

    .line 250
    goto :goto_0
.end method


# virtual methods
.method public act()V
    .locals 2

    .prologue
    .line 186
    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->getDeltaTime()F

    move-result v0

    const v1, 0x3d088889

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->act(F)V

    .line 187
    return-void
.end method

.method public act(F)V
    .locals 9
    .param p1, "delta"    # F

    .prologue
    .line 194
    const/4 v3, 0x0

    .local v3, "pointer":I
    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->pointerOverActors:[Lcom/badlogic/gdx/scenes/scene2d/Actor;

    array-length v1, v5

    .local v1, "n":I
    :goto_0
    if-ge v3, v1, :cond_2

    .line 195
    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->pointerOverActors:[Lcom/badlogic/gdx/scenes/scene2d/Actor;

    aget-object v2, v5, v3

    .line 197
    .local v2, "overLast":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->pointerTouched:[Z

    aget-boolean v5, v5, v3

    if-nez v5, :cond_1

    .line 198
    if-eqz v2, :cond_0

    .line 199
    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->pointerOverActors:[Lcom/badlogic/gdx/scenes/scene2d/Actor;

    const/4 v6, 0x0

    aput-object v6, v5, v3

    .line 200
    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->tempCoords:Lcom/badlogic/gdx/math/Vector2;

    iget-object v6, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->pointerScreenX:[I

    aget v6, v6, v3

    int-to-float v6, v6

    iget-object v7, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->pointerScreenY:[I

    aget v7, v7, v3

    int-to-float v7, v7

    invoke-virtual {v5, v6, v7}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->screenToStageCoordinates(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    .line 202
    const-class v5, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;

    invoke-static {v5}, Lcom/badlogic/gdx/utils/Pools;->obtain(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;

    .line 203
    .local v0, "event":Lcom/badlogic/gdx/scenes/scene2d/InputEvent;
    sget-object v5, Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;->exit:Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setType(Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;)V

    .line 204
    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setStage(Lcom/badlogic/gdx/scenes/scene2d/Stage;)V

    .line 205
    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->tempCoords:Lcom/badlogic/gdx/math/Vector2;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setStageX(F)V

    .line 206
    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->tempCoords:Lcom/badlogic/gdx/math/Vector2;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setStageY(F)V

    .line 207
    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setRelatedActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 208
    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setPointer(I)V

    .line 209
    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->fire(Lcom/badlogic/gdx/scenes/scene2d/Event;)Z

    .line 210
    invoke-static {v0}, Lcom/badlogic/gdx/utils/Pools;->free(Ljava/lang/Object;)V

    .line 194
    .end local v0    # "event":Lcom/badlogic/gdx/scenes/scene2d/InputEvent;
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 215
    :cond_1
    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->pointerOverActors:[Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget-object v6, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->pointerScreenX:[I

    aget v6, v6, v3

    iget-object v7, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->pointerScreenY:[I

    aget v7, v7, v3

    invoke-direct {p0, v2, v6, v7, v3}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->fireEnterAndExit(Lcom/badlogic/gdx/scenes/scene2d/Actor;III)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v6

    aput-object v6, v5, v3

    goto :goto_1

    .line 218
    .end local v2    # "overLast":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    :cond_2
    sget-object v5, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v5}, Lcom/badlogic/gdx/Application;->getType()Lcom/badlogic/gdx/Application$ApplicationType;

    move-result-object v4

    .line 219
    .local v4, "type":Lcom/badlogic/gdx/Application$ApplicationType;
    sget-object v5, Lcom/badlogic/gdx/Application$ApplicationType;->Desktop:Lcom/badlogic/gdx/Application$ApplicationType;

    if-eq v4, v5, :cond_3

    sget-object v5, Lcom/badlogic/gdx/Application$ApplicationType;->Applet:Lcom/badlogic/gdx/Application$ApplicationType;

    if-eq v4, v5, :cond_3

    sget-object v5, Lcom/badlogic/gdx/Application$ApplicationType;->WebGL:Lcom/badlogic/gdx/Application$ApplicationType;

    if-ne v4, v5, :cond_4

    .line 220
    :cond_3
    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->mouseOverActor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    iget v6, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->mouseScreenX:I

    iget v7, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->mouseScreenY:I

    const/4 v8, -0x1

    invoke-direct {p0, v5, v6, v7, v8}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->fireEnterAndExit(Lcom/badlogic/gdx/scenes/scene2d/Actor;III)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v5

    iput-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->mouseOverActor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 223
    :cond_4
    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->root:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v5, p1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->act(F)V

    .line 224
    return-void
.end method

.method public addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V
    .locals 1
    .param p1, "action"    # Lcom/badlogic/gdx/scenes/scene2d/Action;

    .prologue
    .line 547
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->root:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addAction(Lcom/badlogic/gdx/scenes/scene2d/Action;)V

    .line 548
    return-void
.end method

.method public addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 1
    .param p1, "actor"    # Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .prologue
    .line 541
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->root:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 542
    return-void
.end method

.method public addCaptureListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z
    .locals 1
    .param p1, "listener"    # Lcom/badlogic/gdx/scenes/scene2d/EventListener;

    .prologue
    .line 571
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->root:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addCaptureListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    move-result v0

    return v0
.end method

.method public addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z
    .locals 1
    .param p1, "listener"    # Lcom/badlogic/gdx/scenes/scene2d/EventListener;

    .prologue
    .line 559
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->root:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->addListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    move-result v0

    return v0
.end method

.method public addTouchFocus(Lcom/badlogic/gdx/scenes/scene2d/EventListener;Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/Actor;II)V
    .locals 2
    .param p1, "listener"    # Lcom/badlogic/gdx/scenes/scene2d/EventListener;
    .param p2, "listenerActor"    # Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .param p3, "target"    # Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .param p4, "pointer"    # I
    .param p5, "button"    # I

    .prologue
    .line 449
    const-class v1, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;

    invoke-static {v1}, Lcom/badlogic/gdx/utils/Pools;->obtain(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;

    .line 450
    .local v0, "focus":Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;
    iput-object p2, v0, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;->listenerActor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 451
    iput-object p3, v0, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;->target:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 452
    iput-object p1, v0, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;->listener:Lcom/badlogic/gdx/scenes/scene2d/EventListener;

    .line 453
    iput p4, v0, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;->pointer:I

    .line 454
    iput p5, v0, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;->button:I

    .line 455
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->touchFocuses:Lcom/badlogic/gdx/utils/SnapshotArray;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/SnapshotArray;->add(Ljava/lang/Object;)V

    .line 456
    return-void
.end method

.method public calculateScissors(Lcom/badlogic/gdx/math/Rectangle;Lcom/badlogic/gdx/math/Rectangle;)V
    .locals 3
    .param p1, "localRect"    # Lcom/badlogic/gdx/math/Rectangle;
    .param p2, "scissorRect"    # Lcom/badlogic/gdx/math/Rectangle;

    .prologue
    .line 730
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->batch:Lcom/badlogic/gdx/graphics/g2d/Batch;

    invoke-interface {v2}, Lcom/badlogic/gdx/graphics/g2d/Batch;->getTransformMatrix()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v2

    invoke-virtual {v1, v2, p1, p2}, Lcom/badlogic/gdx/utils/viewport/Viewport;->calculateScissors(Lcom/badlogic/gdx/math/Matrix4;Lcom/badlogic/gdx/math/Rectangle;Lcom/badlogic/gdx/math/Rectangle;)V

    .line 732
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->debugShapes:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->debugShapes:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->isDrawing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 733
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->debugShapes:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->getTransformMatrix()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    .line 736
    .local v0, "transformMatrix":Lcom/badlogic/gdx/math/Matrix4;
    :goto_0
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    invoke-virtual {v1, v0, p1, p2}, Lcom/badlogic/gdx/utils/viewport/Viewport;->calculateScissors(Lcom/badlogic/gdx/math/Matrix4;Lcom/badlogic/gdx/math/Rectangle;Lcom/badlogic/gdx/math/Rectangle;)V

    .line 737
    return-void

    .line 735
    .end local v0    # "transformMatrix":Lcom/badlogic/gdx/math/Matrix4;
    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->batch:Lcom/badlogic/gdx/graphics/g2d/Batch;

    invoke-interface {v1}, Lcom/badlogic/gdx/graphics/g2d/Batch;->getTransformMatrix()Lcom/badlogic/gdx/math/Matrix4;

    move-result-object v0

    .restart local v0    # "transformMatrix":Lcom/badlogic/gdx/math/Matrix4;
    goto :goto_0
.end method

.method public cancelTouchFocus()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 506
    invoke-virtual {p0, v0, v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->cancelTouchFocusExcept(Lcom/badlogic/gdx/scenes/scene2d/EventListener;Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 507
    return-void
.end method

.method public cancelTouchFocus(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 8
    .param p1, "actor"    # Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .prologue
    const/high16 v7, -0x31000000

    .line 475
    const-class v6, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;

    invoke-static {v6}, Lcom/badlogic/gdx/utils/Pools;->obtain(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;

    .line 476
    .local v0, "event":Lcom/badlogic/gdx/scenes/scene2d/InputEvent;
    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setStage(Lcom/badlogic/gdx/scenes/scene2d/Stage;)V

    .line 477
    sget-object v6, Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;->touchUp:Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setType(Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;)V

    .line 478
    invoke-virtual {v0, v7}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setStageX(F)V

    .line 479
    invoke-virtual {v0, v7}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setStageY(F)V

    .line 483
    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->touchFocuses:Lcom/badlogic/gdx/utils/SnapshotArray;

    .line 484
    .local v5, "touchFocuses":Lcom/badlogic/gdx/utils/SnapshotArray;, "Lcom/badlogic/gdx/utils/SnapshotArray<Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;>;"
    invoke-virtual {v5}, Lcom/badlogic/gdx/utils/SnapshotArray;->begin()[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;

    .line 485
    .local v3, "items":[Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;
    const/4 v2, 0x0

    .local v2, "i":I
    iget v4, v5, Lcom/badlogic/gdx/utils/SnapshotArray;->size:I

    .local v4, "n":I
    :goto_0
    if-ge v2, v4, :cond_2

    .line 486
    aget-object v1, v3, v2

    .line 487
    .local v1, "focus":Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;
    iget-object v6, v1, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;->listenerActor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-eq v6, p1, :cond_1

    .line 485
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 488
    :cond_1
    const/4 v6, 0x1

    invoke-virtual {v5, v1, v6}, Lcom/badlogic/gdx/utils/SnapshotArray;->removeValue(Ljava/lang/Object;Z)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 489
    iget-object v6, v1, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;->target:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setTarget(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 490
    iget-object v6, v1, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;->listenerActor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setListenerActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 491
    iget v6, v1, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;->pointer:I

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setPointer(I)V

    .line 492
    iget v6, v1, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;->button:I

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setButton(I)V

    .line 493
    iget-object v6, v1, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;->listener:Lcom/badlogic/gdx/scenes/scene2d/EventListener;

    invoke-interface {v6, v0}, Lcom/badlogic/gdx/scenes/scene2d/EventListener;->handle(Lcom/badlogic/gdx/scenes/scene2d/Event;)Z

    goto :goto_1

    .line 496
    .end local v1    # "focus":Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;
    :cond_2
    invoke-virtual {v5}, Lcom/badlogic/gdx/utils/SnapshotArray;->end()V

    .line 498
    invoke-static {v0}, Lcom/badlogic/gdx/utils/Pools;->free(Ljava/lang/Object;)V

    .line 499
    return-void
.end method

.method public cancelTouchFocusExcept(Lcom/badlogic/gdx/scenes/scene2d/EventListener;Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 8
    .param p1, "exceptListener"    # Lcom/badlogic/gdx/scenes/scene2d/EventListener;
    .param p2, "exceptActor"    # Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .prologue
    const/high16 v7, -0x31000000

    .line 512
    const-class v6, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;

    invoke-static {v6}, Lcom/badlogic/gdx/utils/Pools;->obtain(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;

    .line 513
    .local v0, "event":Lcom/badlogic/gdx/scenes/scene2d/InputEvent;
    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setStage(Lcom/badlogic/gdx/scenes/scene2d/Stage;)V

    .line 514
    sget-object v6, Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;->touchUp:Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setType(Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;)V

    .line 515
    invoke-virtual {v0, v7}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setStageX(F)V

    .line 516
    invoke-virtual {v0, v7}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setStageY(F)V

    .line 520
    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->touchFocuses:Lcom/badlogic/gdx/utils/SnapshotArray;

    .line 521
    .local v5, "touchFocuses":Lcom/badlogic/gdx/utils/SnapshotArray;, "Lcom/badlogic/gdx/utils/SnapshotArray<Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;>;"
    invoke-virtual {v5}, Lcom/badlogic/gdx/utils/SnapshotArray;->begin()[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;

    .line 522
    .local v3, "items":[Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;
    const/4 v2, 0x0

    .local v2, "i":I
    iget v4, v5, Lcom/badlogic/gdx/utils/SnapshotArray;->size:I

    .local v4, "n":I
    :goto_0
    if-ge v2, v4, :cond_2

    .line 523
    aget-object v1, v3, v2

    .line 524
    .local v1, "focus":Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;
    iget-object v6, v1, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;->listener:Lcom/badlogic/gdx/scenes/scene2d/EventListener;

    if-ne v6, p1, :cond_1

    iget-object v6, v1, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;->listenerActor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-ne v6, p2, :cond_1

    .line 522
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 525
    :cond_1
    const/4 v6, 0x1

    invoke-virtual {v5, v1, v6}, Lcom/badlogic/gdx/utils/SnapshotArray;->removeValue(Ljava/lang/Object;Z)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 526
    iget-object v6, v1, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;->target:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setTarget(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 527
    iget-object v6, v1, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;->listenerActor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setListenerActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 528
    iget v6, v1, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;->pointer:I

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setPointer(I)V

    .line 529
    iget v6, v1, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;->button:I

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setButton(I)V

    .line 530
    iget-object v6, v1, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;->listener:Lcom/badlogic/gdx/scenes/scene2d/EventListener;

    invoke-interface {v6, v0}, Lcom/badlogic/gdx/scenes/scene2d/EventListener;->handle(Lcom/badlogic/gdx/scenes/scene2d/Event;)Z

    goto :goto_1

    .line 533
    .end local v1    # "focus":Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;
    :cond_2
    invoke-virtual {v5}, Lcom/badlogic/gdx/utils/SnapshotArray;->end()V

    .line 535
    invoke-static {v0}, Lcom/badlogic/gdx/utils/Pools;->free(Ljava/lang/Object;)V

    .line 536
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 582
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->unfocusAll()V

    .line 583
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->root:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->clear()V

    .line 584
    return-void
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 811
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->clear()V

    .line 812
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->ownsBatch:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->batch:Lcom/badlogic/gdx/graphics/g2d/Batch;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/g2d/Batch;->dispose()V

    .line 813
    :cond_0
    return-void
.end method

.method public draw()V
    .locals 4

    .prologue
    .line 119
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/viewport/Viewport;->getCamera()Lcom/badlogic/gdx/graphics/Camera;

    move-result-object v1

    .line 120
    .local v1, "camera":Lcom/badlogic/gdx/graphics/Camera;
    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Camera;->update()V

    .line 122
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->root:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->isVisible()Z

    move-result v2

    if-nez v2, :cond_1

    .line 133
    :cond_0
    :goto_0
    return-void

    .line 124
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->batch:Lcom/badlogic/gdx/graphics/g2d/Batch;

    .line 125
    .local v0, "batch":Lcom/badlogic/gdx/graphics/g2d/Batch;
    if-eqz v0, :cond_2

    .line 126
    iget-object v2, v1, Lcom/badlogic/gdx/graphics/Camera;->combined:Lcom/badlogic/gdx/math/Matrix4;

    invoke-interface {v0, v2}, Lcom/badlogic/gdx/graphics/g2d/Batch;->setProjectionMatrix(Lcom/badlogic/gdx/math/Matrix4;)V

    .line 127
    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/g2d/Batch;->begin()V

    .line 128
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->root:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V

    .line 129
    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/g2d/Batch;->end()V

    .line 132
    :cond_2
    sget-boolean v2, Lcom/badlogic/gdx/scenes/scene2d/Stage;->debug:Z

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->drawDebug()V

    goto :goto_0
.end method

.method public getActionsRequestRendering()Z
    .locals 1

    .prologue
    .line 747
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->actionsRequestRendering:Z

    return v0
.end method

.method public getActors()Lcom/badlogic/gdx/utils/Array;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/scenes/scene2d/Actor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 553
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->root:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/Group;->children:Lcom/badlogic/gdx/utils/SnapshotArray;

    return-object v0
.end method

.method public getBatch()Lcom/badlogic/gdx/graphics/g2d/Batch;
    .locals 1

    .prologue
    .line 663
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->batch:Lcom/badlogic/gdx/graphics/g2d/Batch;

    return-object v0
.end method

.method public getCamera()Lcom/badlogic/gdx/graphics/Camera;
    .locals 1

    .prologue
    .line 686
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/viewport/Viewport;->getCamera()Lcom/badlogic/gdx/graphics/Camera;

    move-result-object v0

    return-object v0
.end method

.method public getDebugColor()Lcom/badlogic/gdx/graphics/Color;
    .locals 1

    .prologue
    .line 752
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->debugColor:Lcom/badlogic/gdx/graphics/Color;

    return-object v0
.end method

.method public getHeight()F
    .locals 1

    .prologue
    .line 681
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/viewport/Viewport;->getWorldHeight()F

    move-result v0

    return v0
.end method

.method public getKeyboardFocus()Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 1

    .prologue
    .line 628
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->keyboardFocus:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    return-object v0
.end method

.method public getRoot()Lcom/badlogic/gdx/scenes/scene2d/Group;
    .locals 1

    .prologue
    .line 691
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->root:Lcom/badlogic/gdx/scenes/scene2d/Group;

    return-object v0
.end method

.method public getScrollFocus()Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 1

    .prologue
    .line 659
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->scrollFocus:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    return-object v0
.end method

.method public getViewport()Lcom/badlogic/gdx/utils/viewport/Viewport;
    .locals 1

    .prologue
    .line 667
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    return-object v0
.end method

.method public getWidth()F
    .locals 1

    .prologue
    .line 676
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/viewport/Viewport;->getWorldWidth()F

    move-result v0

    return v0
.end method

.method public hit(FFZ)Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .locals 3
    .param p1, "stageX"    # F
    .param p2, "stageY"    # F
    .param p3, "touchable"    # Z

    .prologue
    .line 700
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->root:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->tempCoords:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v1, p1, p2}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->parentToLocalCoordinates(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    .line 701
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->root:Lcom/badlogic/gdx/scenes/scene2d/Group;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->tempCoords:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->tempCoords:Lcom/badlogic/gdx/math/Vector2;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v0, v1, v2, p3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->hit(FFZ)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v0

    return-object v0
.end method

.method public keyDown(I)Z
    .locals 4
    .param p1, "keyCode"    # I

    .prologue
    .line 407
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->keyboardFocus:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-nez v3, :cond_0

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->root:Lcom/badlogic/gdx/scenes/scene2d/Group;

    .line 408
    .local v2, "target":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    :goto_0
    const-class v3, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;

    invoke-static {v3}, Lcom/badlogic/gdx/utils/Pools;->obtain(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;

    .line 409
    .local v0, "event":Lcom/badlogic/gdx/scenes/scene2d/InputEvent;
    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setStage(Lcom/badlogic/gdx/scenes/scene2d/Stage;)V

    .line 410
    sget-object v3, Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;->keyDown:Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setType(Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;)V

    .line 411
    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setKeyCode(I)V

    .line 412
    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->fire(Lcom/badlogic/gdx/scenes/scene2d/Event;)Z

    .line 413
    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->isHandled()Z

    move-result v1

    .line 414
    .local v1, "handled":Z
    invoke-static {v0}, Lcom/badlogic/gdx/utils/Pools;->free(Ljava/lang/Object;)V

    .line 415
    return v1

    .line 407
    .end local v0    # "event":Lcom/badlogic/gdx/scenes/scene2d/InputEvent;
    .end local v1    # "handled":Z
    .end local v2    # "target":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    :cond_0
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->keyboardFocus:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    goto :goto_0
.end method

.method public keyTyped(C)Z
    .locals 4
    .param p1, "character"    # C

    .prologue
    .line 435
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->keyboardFocus:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-nez v3, :cond_0

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->root:Lcom/badlogic/gdx/scenes/scene2d/Group;

    .line 436
    .local v2, "target":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    :goto_0
    const-class v3, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;

    invoke-static {v3}, Lcom/badlogic/gdx/utils/Pools;->obtain(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;

    .line 437
    .local v0, "event":Lcom/badlogic/gdx/scenes/scene2d/InputEvent;
    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setStage(Lcom/badlogic/gdx/scenes/scene2d/Stage;)V

    .line 438
    sget-object v3, Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;->keyTyped:Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setType(Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;)V

    .line 439
    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setCharacter(C)V

    .line 440
    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->fire(Lcom/badlogic/gdx/scenes/scene2d/Event;)Z

    .line 441
    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->isHandled()Z

    move-result v1

    .line 442
    .local v1, "handled":Z
    invoke-static {v0}, Lcom/badlogic/gdx/utils/Pools;->free(Ljava/lang/Object;)V

    .line 443
    return v1

    .line 435
    .end local v0    # "event":Lcom/badlogic/gdx/scenes/scene2d/InputEvent;
    .end local v1    # "handled":Z
    .end local v2    # "target":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    :cond_0
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->keyboardFocus:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    goto :goto_0
.end method

.method public keyUp(I)Z
    .locals 4
    .param p1, "keyCode"    # I

    .prologue
    .line 421
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->keyboardFocus:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-nez v3, :cond_0

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->root:Lcom/badlogic/gdx/scenes/scene2d/Group;

    .line 422
    .local v2, "target":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    :goto_0
    const-class v3, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;

    invoke-static {v3}, Lcom/badlogic/gdx/utils/Pools;->obtain(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;

    .line 423
    .local v0, "event":Lcom/badlogic/gdx/scenes/scene2d/InputEvent;
    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setStage(Lcom/badlogic/gdx/scenes/scene2d/Stage;)V

    .line 424
    sget-object v3, Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;->keyUp:Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setType(Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;)V

    .line 425
    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setKeyCode(I)V

    .line 426
    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->fire(Lcom/badlogic/gdx/scenes/scene2d/Event;)Z

    .line 427
    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->isHandled()Z

    move-result v1

    .line 428
    .local v1, "handled":Z
    invoke-static {v0}, Lcom/badlogic/gdx/utils/Pools;->free(Ljava/lang/Object;)V

    .line 429
    return v1

    .line 421
    .end local v0    # "event":Lcom/badlogic/gdx/scenes/scene2d/InputEvent;
    .end local v1    # "handled":Z
    .end local v2    # "target":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    :cond_0
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->keyboardFocus:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    goto :goto_0
.end method

.method public mouseMoved(II)Z
    .locals 6
    .param p1, "screenX"    # I
    .param p2, "screenY"    # I

    .prologue
    const/4 v1, 0x0

    .line 361
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/viewport/Viewport;->getScreenX()I

    move-result v3

    if-lt p1, v3, :cond_0

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/viewport/Viewport;->getScreenX()I

    move-result v3

    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/viewport/Viewport;->getScreenWidth()I

    move-result v4

    add-int/2addr v3, v4

    if-lt p1, v3, :cond_1

    .line 382
    :cond_0
    :goto_0
    return v1

    .line 362
    :cond_1
    sget-object v3, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v3}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v3

    sub-int/2addr v3, p2

    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/viewport/Viewport;->getScreenY()I

    move-result v4

    if-lt v3, v4, :cond_0

    sget-object v3, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v3}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v3

    sub-int/2addr v3, p2

    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/viewport/Viewport;->getScreenY()I

    move-result v4

    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    invoke-virtual {v5}, Lcom/badlogic/gdx/utils/viewport/Viewport;->getScreenHeight()I

    move-result v5

    add-int/2addr v4, v5

    if-ge v3, v4, :cond_0

    .line 365
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->mouseScreenX:I

    .line 366
    iput p2, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->mouseScreenY:I

    .line 368
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->tempCoords:Lcom/badlogic/gdx/math/Vector2;

    int-to-float v4, p1

    int-to-float v5, p2

    invoke-virtual {v3, v4, v5}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->screenToStageCoordinates(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    .line 370
    const-class v3, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;

    invoke-static {v3}, Lcom/badlogic/gdx/utils/Pools;->obtain(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;

    .line 371
    .local v0, "event":Lcom/badlogic/gdx/scenes/scene2d/InputEvent;
    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setStage(Lcom/badlogic/gdx/scenes/scene2d/Stage;)V

    .line 372
    sget-object v3, Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;->mouseMoved:Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setType(Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;)V

    .line 373
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->tempCoords:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setStageX(F)V

    .line 374
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->tempCoords:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setStageY(F)V

    .line 376
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->tempCoords:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->tempCoords:Lcom/badlogic/gdx/math/Vector2;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector2;->y:F

    const/4 v5, 0x1

    invoke-virtual {p0, v3, v4, v5}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->hit(FFZ)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v2

    .line 377
    .local v2, "target":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->root:Lcom/badlogic/gdx/scenes/scene2d/Group;

    .line 379
    :cond_2
    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->fire(Lcom/badlogic/gdx/scenes/scene2d/Event;)Z

    .line 380
    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->isHandled()Z

    move-result v1

    .line 381
    .local v1, "handled":Z
    invoke-static {v0}, Lcom/badlogic/gdx/utils/Pools;->free(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public removeCaptureListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z
    .locals 1
    .param p1, "listener"    # Lcom/badlogic/gdx/scenes/scene2d/EventListener;

    .prologue
    .line 577
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->root:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->removeCaptureListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    move-result v0

    return v0
.end method

.method public removeListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z
    .locals 1
    .param p1, "listener"    # Lcom/badlogic/gdx/scenes/scene2d/EventListener;

    .prologue
    .line 565
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->root:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Group;->removeListener(Lcom/badlogic/gdx/scenes/scene2d/EventListener;)Z

    move-result v0

    return v0
.end method

.method public removeTouchFocus(Lcom/badlogic/gdx/scenes/scene2d/EventListener;Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/Actor;II)V
    .locals 4
    .param p1, "listener"    # Lcom/badlogic/gdx/scenes/scene2d/EventListener;
    .param p2, "listenerActor"    # Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .param p3, "target"    # Lcom/badlogic/gdx/scenes/scene2d/Actor;
    .param p4, "pointer"    # I
    .param p5, "button"    # I

    .prologue
    .line 461
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->touchFocuses:Lcom/badlogic/gdx/utils/SnapshotArray;

    .line 462
    .local v2, "touchFocuses":Lcom/badlogic/gdx/utils/SnapshotArray;, "Lcom/badlogic/gdx/utils/SnapshotArray<Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;>;"
    iget v3, v2, Lcom/badlogic/gdx/utils/SnapshotArray;->size:I

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 463
    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/SnapshotArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;

    .line 464
    .local v0, "focus":Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;
    iget-object v3, v0, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;->listener:Lcom/badlogic/gdx/scenes/scene2d/EventListener;

    if-ne v3, p1, :cond_0

    iget-object v3, v0, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;->listenerActor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-ne v3, p2, :cond_0

    iget-object v3, v0, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;->target:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-ne v3, p3, :cond_0

    iget v3, v0, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;->pointer:I

    if-ne v3, p4, :cond_0

    iget v3, v0, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;->button:I

    if-ne v3, p5, :cond_0

    .line 466
    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/SnapshotArray;->removeIndex(I)Ljava/lang/Object;

    .line 467
    invoke-static {v0}, Lcom/badlogic/gdx/utils/Pools;->free(Ljava/lang/Object;)V

    .line 462
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 470
    .end local v0    # "focus":Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;
    :cond_1
    return-void
.end method

.method public screenToStageCoordinates(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;
    .locals 1
    .param p1, "screenCoords"    # Lcom/badlogic/gdx/math/Vector2;

    .prologue
    .line 707
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/viewport/Viewport;->unproject(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    .line 708
    return-object p1
.end method

.method public scrolled(I)Z
    .locals 6
    .param p1, "amount"    # I

    .prologue
    .line 388
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->scrollFocus:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-nez v3, :cond_0

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->root:Lcom/badlogic/gdx/scenes/scene2d/Group;

    .line 390
    .local v2, "target":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    :goto_0
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->tempCoords:Lcom/badlogic/gdx/math/Vector2;

    iget v4, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->mouseScreenX:I

    int-to-float v4, v4

    iget v5, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->mouseScreenY:I

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->screenToStageCoordinates(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    .line 392
    const-class v3, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;

    invoke-static {v3}, Lcom/badlogic/gdx/utils/Pools;->obtain(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;

    .line 393
    .local v0, "event":Lcom/badlogic/gdx/scenes/scene2d/InputEvent;
    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setStage(Lcom/badlogic/gdx/scenes/scene2d/Stage;)V

    .line 394
    sget-object v3, Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;->scrolled:Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setType(Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;)V

    .line 395
    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setScrollAmount(I)V

    .line 396
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->tempCoords:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setStageX(F)V

    .line 397
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->tempCoords:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setStageY(F)V

    .line 398
    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->fire(Lcom/badlogic/gdx/scenes/scene2d/Event;)Z

    .line 399
    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->isHandled()Z

    move-result v1

    .line 400
    .local v1, "handled":Z
    invoke-static {v0}, Lcom/badlogic/gdx/utils/Pools;->free(Ljava/lang/Object;)V

    .line 401
    return v1

    .line 388
    .end local v0    # "event":Lcom/badlogic/gdx/scenes/scene2d/InputEvent;
    .end local v1    # "handled":Z
    .end local v2    # "target":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    :cond_0
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->scrollFocus:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    goto :goto_0
.end method

.method public setActionsRequestRendering(Z)V
    .locals 0
    .param p1, "actionsRequestRendering"    # Z

    .prologue
    .line 743
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->actionsRequestRendering:Z

    .line 744
    return-void
.end method

.method public setDebugAll(Z)V
    .locals 3
    .param p1, "debugAll"    # Z

    .prologue
    const/4 v2, 0x1

    .line 762
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->debugAll:Z

    if-ne v0, p1, :cond_0

    .line 768
    :goto_0
    return-void

    .line 763
    :cond_0
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->debugAll:Z

    .line 764
    if-eqz p1, :cond_1

    .line 765
    sput-boolean v2, Lcom/badlogic/gdx/scenes/scene2d/Stage;->debug:Z

    goto :goto_0

    .line 767
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->root:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setDebug(ZZ)V

    goto :goto_0
.end method

.method public setDebugInvisible(Z)V
    .locals 0
    .param p1, "debugInvisible"    # Z

    .prologue
    .line 757
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->debugInvisible:Z

    .line 758
    return-void
.end method

.method public setDebugParentUnderMouse(Z)V
    .locals 3
    .param p1, "debugParentUnderMouse"    # Z

    .prologue
    const/4 v2, 0x1

    .line 783
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->debugParentUnderMouse:Z

    if-ne v0, p1, :cond_0

    .line 789
    :goto_0
    return-void

    .line 784
    :cond_0
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->debugParentUnderMouse:Z

    .line 785
    if-eqz p1, :cond_1

    .line 786
    sput-boolean v2, Lcom/badlogic/gdx/scenes/scene2d/Stage;->debug:Z

    goto :goto_0

    .line 788
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->root:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setDebug(ZZ)V

    goto :goto_0
.end method

.method public setDebugTableUnderMouse(Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;)V
    .locals 3
    .param p1, "debugTableUnderMouse"    # Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    .prologue
    const/4 v2, 0x1

    .line 795
    if-nez p1, :cond_0

    sget-object p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;->none:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    .line 796
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->debugTableUnderMouse:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    if-ne v0, p1, :cond_1

    .line 802
    :goto_0
    return-void

    .line 797
    :cond_1
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->debugTableUnderMouse:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    .line 798
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;->none:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    if-eq p1, v0, :cond_2

    .line 799
    sput-boolean v2, Lcom/badlogic/gdx/scenes/scene2d/Stage;->debug:Z

    goto :goto_0

    .line 801
    :cond_2
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->root:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setDebug(ZZ)V

    goto :goto_0
.end method

.method public setDebugTableUnderMouse(Z)V
    .locals 1
    .param p1, "debugTableUnderMouse"    # Z

    .prologue
    .line 807
    if-eqz p1, :cond_0

    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;->all:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->setDebugTableUnderMouse(Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;)V

    .line 808
    return-void

    .line 807
    :cond_0
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;->none:Lcom/badlogic/gdx/scenes/scene2d/ui/Table$Debug;

    goto :goto_0
.end method

.method public setDebugUnderMouse(Z)V
    .locals 3
    .param p1, "debugUnderMouse"    # Z

    .prologue
    const/4 v2, 0x1

    .line 772
    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->debugUnderMouse:Z

    if-ne v0, p1, :cond_0

    .line 778
    :goto_0
    return-void

    .line 773
    :cond_0
    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->debugUnderMouse:Z

    .line 774
    if-eqz p1, :cond_1

    .line 775
    sput-boolean v2, Lcom/badlogic/gdx/scenes/scene2d/Stage;->debug:Z

    goto :goto_0

    .line 777
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->root:Lcom/badlogic/gdx/scenes/scene2d/Group;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/Group;->setDebug(ZZ)V

    goto :goto_0
.end method

.method public setKeyboardFocus(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 3
    .param p1, "actor"    # Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .prologue
    .line 603
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->keyboardFocus:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-ne v2, p1, :cond_0

    .line 623
    :goto_0
    return-void

    .line 604
    :cond_0
    const-class v2, Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent;

    invoke-static {v2}, Lcom/badlogic/gdx/utils/Pools;->obtain(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent;

    .line 605
    .local v0, "event":Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent;
    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent;->setStage(Lcom/badlogic/gdx/scenes/scene2d/Stage;)V

    .line 606
    sget-object v2, Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent$Type;->keyboard:Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent$Type;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent;->setType(Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent$Type;)V

    .line 607
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->keyboardFocus:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 608
    .local v1, "oldKeyboardFocus":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    if-eqz v1, :cond_1

    .line 609
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent;->setFocused(Z)V

    .line 610
    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent;->setRelatedActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 611
    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->fire(Lcom/badlogic/gdx/scenes/scene2d/Event;)Z

    .line 613
    :cond_1
    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_2

    .line 614
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->keyboardFocus:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 615
    if-eqz p1, :cond_2

    .line 616
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent;->setFocused(Z)V

    .line 617
    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent;->setRelatedActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 618
    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->fire(Lcom/badlogic/gdx/scenes/scene2d/Event;)Z

    .line 619
    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->setKeyboardFocus(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 622
    :cond_2
    invoke-static {v0}, Lcom/badlogic/gdx/utils/Pools;->free(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setScrollFocus(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 3
    .param p1, "actor"    # Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .prologue
    .line 634
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->scrollFocus:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-ne v2, p1, :cond_0

    .line 654
    :goto_0
    return-void

    .line 635
    :cond_0
    const-class v2, Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent;

    invoke-static {v2}, Lcom/badlogic/gdx/utils/Pools;->obtain(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent;

    .line 636
    .local v0, "event":Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent;
    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent;->setStage(Lcom/badlogic/gdx/scenes/scene2d/Stage;)V

    .line 637
    sget-object v2, Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent$Type;->scroll:Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent$Type;

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent;->setType(Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent$Type;)V

    .line 638
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->keyboardFocus:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 639
    .local v1, "oldScrollFocus":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    if-eqz v1, :cond_1

    .line 640
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent;->setFocused(Z)V

    .line 641
    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent;->setRelatedActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 642
    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->fire(Lcom/badlogic/gdx/scenes/scene2d/Event;)Z

    .line 644
    :cond_1
    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_2

    .line 645
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->scrollFocus:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 646
    if-eqz p1, :cond_2

    .line 647
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent;->setFocused(Z)V

    .line 648
    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent;->setRelatedActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 649
    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->fire(Lcom/badlogic/gdx/scenes/scene2d/Event;)Z

    .line 650
    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/FocusListener$FocusEvent;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->setScrollFocus(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 653
    :cond_2
    invoke-static {v0}, Lcom/badlogic/gdx/utils/Pools;->free(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setViewport(Lcom/badlogic/gdx/utils/viewport/Viewport;)V
    .locals 0
    .param p1, "viewport"    # Lcom/badlogic/gdx/utils/viewport/Viewport;

    .prologue
    .line 671
    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    .line 672
    return-void
.end method

.method public stageToScreenCoordinates(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;
    .locals 2
    .param p1, "stageCoords"    # Lcom/badlogic/gdx/math/Vector2;

    .prologue
    .line 714
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/viewport/Viewport;->project(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    .line 715
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/viewport/Viewport;->getScreenHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float/2addr v0, v1

    iput v0, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 716
    return-object p1
.end method

.method public toScreenCoordinates(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector2;
    .locals 1
    .param p1, "coords"    # Lcom/badlogic/gdx/math/Vector2;
    .param p2, "transformMatrix"    # Lcom/badlogic/gdx/math/Matrix4;

    .prologue
    .line 724
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/utils/viewport/Viewport;->toScreenCoordinates(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v0

    return-object v0
.end method

.method public touchDown(IIII)Z
    .locals 7
    .param p1, "screenX"    # I
    .param p2, "screenY"    # I
    .param p3, "pointer"    # I
    .param p4, "button"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 255
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/viewport/Viewport;->getScreenX()I

    move-result v3

    if-lt p1, v3, :cond_0

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/viewport/Viewport;->getScreenX()I

    move-result v3

    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/viewport/Viewport;->getScreenWidth()I

    move-result v4

    add-int/2addr v3, v4

    if-lt p1, v3, :cond_1

    .line 282
    :cond_0
    :goto_0
    return v1

    .line 256
    :cond_1
    sget-object v3, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v3}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v3

    sub-int/2addr v3, p2

    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/viewport/Viewport;->getScreenY()I

    move-result v4

    if-lt v3, v4, :cond_0

    sget-object v3, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v3}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v3

    sub-int/2addr v3, p2

    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    invoke-virtual {v4}, Lcom/badlogic/gdx/utils/viewport/Viewport;->getScreenY()I

    move-result v4

    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->viewport:Lcom/badlogic/gdx/utils/viewport/Viewport;

    invoke-virtual {v5}, Lcom/badlogic/gdx/utils/viewport/Viewport;->getScreenHeight()I

    move-result v5

    add-int/2addr v4, v5

    if-ge v3, v4, :cond_0

    .line 259
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->pointerTouched:[Z

    aput-boolean v6, v3, p3

    .line 260
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->pointerScreenX:[I

    aput p1, v3, p3

    .line 261
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->pointerScreenY:[I

    aput p2, v3, p3

    .line 263
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->tempCoords:Lcom/badlogic/gdx/math/Vector2;

    int-to-float v4, p1

    int-to-float v5, p2

    invoke-virtual {v3, v4, v5}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->screenToStageCoordinates(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    .line 265
    const-class v3, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;

    invoke-static {v3}, Lcom/badlogic/gdx/utils/Pools;->obtain(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;

    .line 266
    .local v0, "event":Lcom/badlogic/gdx/scenes/scene2d/InputEvent;
    sget-object v3, Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;->touchDown:Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setType(Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;)V

    .line 267
    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setStage(Lcom/badlogic/gdx/scenes/scene2d/Stage;)V

    .line 268
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->tempCoords:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setStageX(F)V

    .line 269
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->tempCoords:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setStageY(F)V

    .line 270
    invoke-virtual {v0, p3}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setPointer(I)V

    .line 271
    invoke-virtual {v0, p4}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setButton(I)V

    .line 273
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->tempCoords:Lcom/badlogic/gdx/math/Vector2;

    iget v3, v3, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->tempCoords:Lcom/badlogic/gdx/math/Vector2;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {p0, v3, v4, v6}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->hit(FFZ)Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v2

    .line 274
    .local v2, "target":Lcom/badlogic/gdx/scenes/scene2d/Actor;
    if-nez v2, :cond_3

    .line 275
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->root:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/Group;->getTouchable()Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    move-result-object v3

    sget-object v4, Lcom/badlogic/gdx/scenes/scene2d/Touchable;->enabled:Lcom/badlogic/gdx/scenes/scene2d/Touchable;

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->root:Lcom/badlogic/gdx/scenes/scene2d/Group;

    invoke-virtual {v3, v0}, Lcom/badlogic/gdx/scenes/scene2d/Group;->fire(Lcom/badlogic/gdx/scenes/scene2d/Event;)Z

    .line 280
    :cond_2
    :goto_1
    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->isHandled()Z

    move-result v1

    .line 281
    .local v1, "handled":Z
    invoke-static {v0}, Lcom/badlogic/gdx/utils/Pools;->free(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 277
    .end local v1    # "handled":Z
    :cond_3
    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->fire(Lcom/badlogic/gdx/scenes/scene2d/Event;)Z

    goto :goto_1
.end method

.method public touchDragged(III)Z
    .locals 10
    .param p1, "screenX"    # I
    .param p2, "screenY"    # I
    .param p3, "pointer"    # I

    .prologue
    .line 288
    iget-object v7, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->pointerScreenX:[I

    aput p1, v7, p3

    .line 289
    iget-object v7, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->pointerScreenY:[I

    aput p2, v7, p3

    .line 290
    iput p1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->mouseScreenX:I

    .line 291
    iput p2, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->mouseScreenY:I

    .line 293
    iget-object v7, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->touchFocuses:Lcom/badlogic/gdx/utils/SnapshotArray;

    iget v7, v7, Lcom/badlogic/gdx/utils/SnapshotArray;->size:I

    if-nez v7, :cond_0

    const/4 v3, 0x0

    .line 318
    :goto_0
    return v3

    .line 295
    :cond_0
    iget-object v7, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->tempCoords:Lcom/badlogic/gdx/math/Vector2;

    int-to-float v8, p1

    int-to-float v9, p2

    invoke-virtual {v7, v8, v9}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->screenToStageCoordinates(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    .line 297
    const-class v7, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;

    invoke-static {v7}, Lcom/badlogic/gdx/utils/Pools;->obtain(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;

    .line 298
    .local v0, "event":Lcom/badlogic/gdx/scenes/scene2d/InputEvent;
    sget-object v7, Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;->touchDragged:Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

    invoke-virtual {v0, v7}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setType(Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;)V

    .line 299
    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setStage(Lcom/badlogic/gdx/scenes/scene2d/Stage;)V

    .line 300
    iget-object v7, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->tempCoords:Lcom/badlogic/gdx/math/Vector2;

    iget v7, v7, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-virtual {v0, v7}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setStageX(F)V

    .line 301
    iget-object v7, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->tempCoords:Lcom/badlogic/gdx/math/Vector2;

    iget v7, v7, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v0, v7}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setStageY(F)V

    .line 302
    invoke-virtual {v0, p3}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setPointer(I)V

    .line 304
    iget-object v6, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->touchFocuses:Lcom/badlogic/gdx/utils/SnapshotArray;

    .line 305
    .local v6, "touchFocuses":Lcom/badlogic/gdx/utils/SnapshotArray;, "Lcom/badlogic/gdx/utils/SnapshotArray<Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;>;"
    invoke-virtual {v6}, Lcom/badlogic/gdx/utils/SnapshotArray;->begin()[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;

    .line 306
    .local v2, "focuses":[Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;
    const/4 v4, 0x0

    .local v4, "i":I
    iget v5, v6, Lcom/badlogic/gdx/utils/SnapshotArray;->size:I

    .local v5, "n":I
    :goto_1
    if-ge v4, v5, :cond_3

    .line 307
    aget-object v1, v2, v4

    .line 308
    .local v1, "focus":Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;
    iget v7, v1, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;->pointer:I

    if-eq v7, p3, :cond_2

    .line 306
    :cond_1
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 309
    :cond_2
    const/4 v7, 0x1

    invoke-virtual {v6, v1, v7}, Lcom/badlogic/gdx/utils/SnapshotArray;->contains(Ljava/lang/Object;Z)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 310
    iget-object v7, v1, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;->target:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0, v7}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setTarget(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 311
    iget-object v7, v1, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;->listenerActor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0, v7}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setListenerActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 312
    iget-object v7, v1, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;->listener:Lcom/badlogic/gdx/scenes/scene2d/EventListener;

    invoke-interface {v7, v0}, Lcom/badlogic/gdx/scenes/scene2d/EventListener;->handle(Lcom/badlogic/gdx/scenes/scene2d/Event;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->handle()V

    goto :goto_2

    .line 314
    .end local v1    # "focus":Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;
    :cond_3
    invoke-virtual {v6}, Lcom/badlogic/gdx/utils/SnapshotArray;->end()V

    .line 316
    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->isHandled()Z

    move-result v3

    .line 317
    .local v3, "handled":Z
    invoke-static {v0}, Lcom/badlogic/gdx/utils/Pools;->free(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public touchUp(IIII)Z
    .locals 10
    .param p1, "screenX"    # I
    .param p2, "screenY"    # I
    .param p3, "pointer"    # I
    .param p4, "button"    # I

    .prologue
    const/4 v3, 0x0

    .line 324
    iget-object v7, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->pointerTouched:[Z

    aput-boolean v3, v7, p3

    .line 325
    iget-object v7, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->pointerScreenX:[I

    aput p1, v7, p3

    .line 326
    iget-object v7, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->pointerScreenY:[I

    aput p2, v7, p3

    .line 328
    iget-object v7, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->touchFocuses:Lcom/badlogic/gdx/utils/SnapshotArray;

    iget v7, v7, Lcom/badlogic/gdx/utils/SnapshotArray;->size:I

    if-nez v7, :cond_0

    .line 355
    :goto_0
    return v3

    .line 330
    :cond_0
    iget-object v7, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->tempCoords:Lcom/badlogic/gdx/math/Vector2;

    int-to-float v8, p1

    int-to-float v9, p2

    invoke-virtual {v7, v8, v9}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->screenToStageCoordinates(Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    .line 332
    const-class v7, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;

    invoke-static {v7}, Lcom/badlogic/gdx/utils/Pools;->obtain(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;

    .line 333
    .local v0, "event":Lcom/badlogic/gdx/scenes/scene2d/InputEvent;
    sget-object v7, Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;->touchUp:Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

    invoke-virtual {v0, v7}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setType(Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;)V

    .line 334
    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setStage(Lcom/badlogic/gdx/scenes/scene2d/Stage;)V

    .line 335
    iget-object v7, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->tempCoords:Lcom/badlogic/gdx/math/Vector2;

    iget v7, v7, Lcom/badlogic/gdx/math/Vector2;->x:F

    invoke-virtual {v0, v7}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setStageX(F)V

    .line 336
    iget-object v7, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->tempCoords:Lcom/badlogic/gdx/math/Vector2;

    iget v7, v7, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v0, v7}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setStageY(F)V

    .line 337
    invoke-virtual {v0, p3}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setPointer(I)V

    .line 338
    invoke-virtual {v0, p4}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setButton(I)V

    .line 340
    iget-object v6, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->touchFocuses:Lcom/badlogic/gdx/utils/SnapshotArray;

    .line 341
    .local v6, "touchFocuses":Lcom/badlogic/gdx/utils/SnapshotArray;, "Lcom/badlogic/gdx/utils/SnapshotArray<Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;>;"
    invoke-virtual {v6}, Lcom/badlogic/gdx/utils/SnapshotArray;->begin()[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;

    .line 342
    .local v2, "focuses":[Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;
    const/4 v4, 0x0

    .local v4, "i":I
    iget v5, v6, Lcom/badlogic/gdx/utils/SnapshotArray;->size:I

    .local v5, "n":I
    :goto_1
    if-ge v4, v5, :cond_4

    .line 343
    aget-object v1, v2, v4

    .line 344
    .local v1, "focus":Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;
    iget v7, v1, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;->pointer:I

    if-ne v7, p3, :cond_1

    iget v7, v1, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;->button:I

    if-eq v7, p4, :cond_2

    .line 342
    :cond_1
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 345
    :cond_2
    const/4 v7, 0x1

    invoke-virtual {v6, v1, v7}, Lcom/badlogic/gdx/utils/SnapshotArray;->removeValue(Ljava/lang/Object;Z)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 346
    iget-object v7, v1, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;->target:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0, v7}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setTarget(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 347
    iget-object v7, v1, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;->listenerActor:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0, v7}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->setListenerActor(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 348
    iget-object v7, v1, Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;->listener:Lcom/badlogic/gdx/scenes/scene2d/EventListener;

    invoke-interface {v7, v0}, Lcom/badlogic/gdx/scenes/scene2d/EventListener;->handle(Lcom/badlogic/gdx/scenes/scene2d/Event;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->handle()V

    .line 349
    :cond_3
    invoke-static {v1}, Lcom/badlogic/gdx/utils/Pools;->free(Ljava/lang/Object;)V

    goto :goto_2

    .line 351
    .end local v1    # "focus":Lcom/badlogic/gdx/scenes/scene2d/Stage$TouchFocus;
    :cond_4
    invoke-virtual {v6}, Lcom/badlogic/gdx/utils/SnapshotArray;->end()V

    .line 353
    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->isHandled()Z

    move-result v3

    .line 354
    .local v3, "handled":Z
    invoke-static {v0}, Lcom/badlogic/gdx/utils/Pools;->free(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public unfocus(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 2
    .param p1, "actor"    # Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .prologue
    const/4 v1, 0x0

    .line 595
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->cancelTouchFocus(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    .line 596
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->scrollFocus:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->scrollFocus:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->isDescendantOf(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->scrollFocus:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 597
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->keyboardFocus:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->keyboardFocus:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/scenes/scene2d/Actor;->isDescendantOf(Lcom/badlogic/gdx/scenes/scene2d/Actor;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->keyboardFocus:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 598
    :cond_1
    return-void
.end method

.method public unfocusAll()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 588
    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->scrollFocus:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 589
    iput-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/Stage;->keyboardFocus:Lcom/badlogic/gdx/scenes/scene2d/Actor;

    .line 590
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->cancelTouchFocus()V

    .line 591
    return-void
.end method
