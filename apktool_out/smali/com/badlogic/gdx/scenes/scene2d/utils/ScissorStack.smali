.class public Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;
.super Ljava/lang/Object;
.source "ScissorStack.java"


# static fields
.field private static scissors:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/math/Rectangle;",
            ">;"
        }
    .end annotation
.end field

.field static tmp:Lcom/badlogic/gdx/math/Vector3;

.field static final viewport:Lcom/badlogic/gdx/math/Rectangle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->scissors:Lcom/badlogic/gdx/utils/Array;

    .line 33
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->tmp:Lcom/badlogic/gdx/math/Vector3;

    .line 34
    new-instance v0, Lcom/badlogic/gdx/math/Rectangle;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Rectangle;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->viewport:Lcom/badlogic/gdx/math/Rectangle;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateScissors(Lcom/badlogic/gdx/graphics/Camera;FFFFLcom/badlogic/gdx/math/Matrix4;Lcom/badlogic/gdx/math/Rectangle;Lcom/badlogic/gdx/math/Rectangle;)V
    .locals 7
    .param p0, "camera"    # Lcom/badlogic/gdx/graphics/Camera;
    .param p1, "viewportX"    # F
    .param p2, "viewportY"    # F
    .param p3, "viewportWidth"    # F
    .param p4, "viewportHeight"    # F
    .param p5, "batchTransform"    # Lcom/badlogic/gdx/math/Matrix4;
    .param p6, "area"    # Lcom/badlogic/gdx/math/Rectangle;
    .param p7, "scissor"    # Lcom/badlogic/gdx/math/Rectangle;

    .prologue
    const/4 v6, 0x0

    .line 122
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->tmp:Lcom/badlogic/gdx/math/Vector3;

    iget v1, p6, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v2, p6, Lcom/badlogic/gdx/math/Rectangle;->y:F

    invoke-virtual {v0, v1, v2, v6}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 123
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->tmp:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, p5}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector3;

    .line 124
    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->tmp:Lcom/badlogic/gdx/math/Vector3;

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/Camera;->project(Lcom/badlogic/gdx/math/Vector3;FFFF)Lcom/badlogic/gdx/math/Vector3;

    .line 125
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->tmp:Lcom/badlogic/gdx/math/Vector3;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->x:F

    iput v0, p7, Lcom/badlogic/gdx/math/Rectangle;->x:F

    .line 126
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->tmp:Lcom/badlogic/gdx/math/Vector3;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->y:F

    iput v0, p7, Lcom/badlogic/gdx/math/Rectangle;->y:F

    .line 128
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->tmp:Lcom/badlogic/gdx/math/Vector3;

    iget v1, p6, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v2, p6, Lcom/badlogic/gdx/math/Rectangle;->width:F

    add-float/2addr v1, v2

    iget v2, p6, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget v3, p6, Lcom/badlogic/gdx/math/Rectangle;->height:F

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2, v6}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 129
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->tmp:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, p5}, Lcom/badlogic/gdx/math/Vector3;->mul(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Vector3;

    .line 130
    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->tmp:Lcom/badlogic/gdx/math/Vector3;

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/Camera;->project(Lcom/badlogic/gdx/math/Vector3;FFFF)Lcom/badlogic/gdx/math/Vector3;

    .line 131
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->tmp:Lcom/badlogic/gdx/math/Vector3;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v1, p7, Lcom/badlogic/gdx/math/Rectangle;->x:F

    sub-float/2addr v0, v1

    iput v0, p7, Lcom/badlogic/gdx/math/Rectangle;->width:F

    .line 132
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->tmp:Lcom/badlogic/gdx/math/Vector3;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v1, p7, Lcom/badlogic/gdx/math/Rectangle;->y:F

    sub-float/2addr v0, v1

    iput v0, p7, Lcom/badlogic/gdx/math/Rectangle;->height:F

    .line 133
    return-void
.end method

.method public static calculateScissors(Lcom/badlogic/gdx/graphics/Camera;Lcom/badlogic/gdx/math/Matrix4;Lcom/badlogic/gdx/math/Rectangle;Lcom/badlogic/gdx/math/Rectangle;)V
    .locals 8
    .param p0, "camera"    # Lcom/badlogic/gdx/graphics/Camera;
    .param p1, "batchTransform"    # Lcom/badlogic/gdx/math/Matrix4;
    .param p2, "area"    # Lcom/badlogic/gdx/math/Rectangle;
    .param p3, "scissor"    # Lcom/badlogic/gdx/math/Rectangle;

    .prologue
    const/4 v1, 0x0

    .line 108
    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v0

    int-to-float v3, v0

    sget-object v0, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v0}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v0

    int-to-float v4, v0

    move-object v0, p0

    move v2, v1

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v0 .. v7}, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->calculateScissors(Lcom/badlogic/gdx/graphics/Camera;FFFFLcom/badlogic/gdx/math/Matrix4;Lcom/badlogic/gdx/math/Rectangle;Lcom/badlogic/gdx/math/Rectangle;)V

    .line 109
    return-void
.end method

.method private static fix(Lcom/badlogic/gdx/math/Rectangle;)V
    .locals 3
    .param p0, "rect"    # Lcom/badlogic/gdx/math/Rectangle;

    .prologue
    const/4 v2, 0x0

    .line 91
    iget v0, p0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    .line 92
    iget v0, p0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    .line 93
    iget v0, p0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    .line 94
    iget v0, p0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    .line 95
    iget v0, p0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    .line 96
    iget v0, p0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    neg-float v0, v0

    iput v0, p0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    .line 97
    iget v0, p0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v1, p0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    .line 99
    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    .line 100
    iget v0, p0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    neg-float v0, v0

    iput v0, p0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    .line 101
    iget v0, p0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget v1, p0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    .line 103
    :cond_1
    return-void
.end method

.method public static getViewport()Lcom/badlogic/gdx/math/Rectangle;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 137
    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->scissors:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-nez v1, :cond_0

    .line 138
    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->viewport:Lcom/badlogic/gdx/math/Rectangle;

    sget-object v2, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v2}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sget-object v3, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v3}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v4, v4, v2, v3}, Lcom/badlogic/gdx/math/Rectangle;->set(FFFF)Lcom/badlogic/gdx/math/Rectangle;

    .line 139
    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->viewport:Lcom/badlogic/gdx/math/Rectangle;

    .line 143
    .local v0, "scissor":Lcom/badlogic/gdx/math/Rectangle;
    :goto_0
    return-object v1

    .line 141
    .end local v0    # "scissor":Lcom/badlogic/gdx/math/Rectangle;
    :cond_0
    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->scissors:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/Array;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/math/Rectangle;

    .line 142
    .restart local v0    # "scissor":Lcom/badlogic/gdx/math/Rectangle;
    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->viewport:Lcom/badlogic/gdx/math/Rectangle;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/math/Rectangle;->set(Lcom/badlogic/gdx/math/Rectangle;)Lcom/badlogic/gdx/math/Rectangle;

    .line 143
    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->viewport:Lcom/badlogic/gdx/math/Rectangle;

    goto :goto_0
.end method

.method public static peekScissors()Lcom/badlogic/gdx/math/Rectangle;
    .locals 1

    .prologue
    .line 87
    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->scissors:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/math/Rectangle;

    return-object v0
.end method

.method public static popScissors()Lcom/badlogic/gdx/math/Rectangle;
    .locals 7

    .prologue
    .line 76
    sget-object v2, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->scissors:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Array;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/math/Rectangle;

    .line 77
    .local v0, "old":Lcom/badlogic/gdx/math/Rectangle;
    sget-object v2, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->scissors:Lcom/badlogic/gdx/utils/Array;

    iget v2, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-nez v2, :cond_0

    .line 78
    sget-object v2, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const/16 v3, 0xc11

    invoke-interface {v2, v3}, Lcom/badlogic/gdx/graphics/GL20;->glDisable(I)V

    .line 83
    :goto_0
    return-object v0

    .line 80
    :cond_0
    sget-object v2, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->scissors:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Array;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/math/Rectangle;

    .line 81
    .local v1, "scissor":Lcom/badlogic/gdx/math/Rectangle;
    sget-object v2, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    iget v3, v1, Lcom/badlogic/gdx/math/Rectangle;->x:F

    float-to-int v3, v3

    iget v4, v1, Lcom/badlogic/gdx/math/Rectangle;->y:F

    float-to-int v4, v4

    iget v5, v1, Lcom/badlogic/gdx/math/Rectangle;->width:F

    float-to-int v5, v5

    iget v6, v1, Lcom/badlogic/gdx/math/Rectangle;->height:F

    float-to-int v6, v6

    invoke-interface {v2, v3, v4, v5, v6}, Lcom/badlogic/gdx/graphics/GL20;->glScissor(IIII)V

    goto :goto_0
.end method

.method public static pushScissors(Lcom/badlogic/gdx/math/Rectangle;)Z
    .locals 10
    .param p0, "scissor"    # Lcom/badlogic/gdx/math/Rectangle;

    .prologue
    const/4 v5, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    .line 45
    invoke-static {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->fix(Lcom/badlogic/gdx/math/Rectangle;)V

    .line 47
    sget-object v6, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->scissors:Lcom/badlogic/gdx/utils/Array;

    iget v6, v6, Lcom/badlogic/gdx/utils/Array;->size:I

    if-nez v6, :cond_2

    .line 48
    iget v6, p0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    cmpg-float v6, v6, v9

    if-ltz v6, :cond_0

    iget v6, p0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    cmpg-float v6, v6, v9

    if-gez v6, :cond_1

    .line 68
    :cond_0
    :goto_0
    return v5

    .line 49
    :cond_1
    sget-object v5, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const/16 v6, 0xc11

    invoke-interface {v5, v6}, Lcom/badlogic/gdx/graphics/GL20;->glEnable(I)V

    .line 66
    :goto_1
    sget-object v5, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->scissors:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v5, p0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 67
    sget-object v5, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    iget v6, p0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    float-to-int v6, v6

    iget v7, p0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    float-to-int v7, v7

    iget v8, p0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    float-to-int v8, v8

    iget v9, p0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    float-to-int v9, v9

    invoke-interface {v5, v6, v7, v8, v9}, Lcom/badlogic/gdx/graphics/GL20;->glScissor(IIII)V

    .line 68
    const/4 v5, 0x1

    goto :goto_0

    .line 52
    :cond_2
    sget-object v6, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->scissors:Lcom/badlogic/gdx/utils/Array;

    sget-object v7, Lcom/badlogic/gdx/scenes/scene2d/utils/ScissorStack;->scissors:Lcom/badlogic/gdx/utils/Array;

    iget v7, v7, Lcom/badlogic/gdx/utils/Array;->size:I

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v7}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/math/Rectangle;

    .line 53
    .local v4, "parent":Lcom/badlogic/gdx/math/Rectangle;
    iget v6, v4, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v7, p0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 54
    .local v2, "minX":F
    iget v6, v4, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v7, v4, Lcom/badlogic/gdx/math/Rectangle;->width:F

    add-float/2addr v6, v7

    iget v7, p0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    iget v8, p0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    add-float/2addr v7, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 55
    .local v0, "maxX":F
    sub-float v6, v0, v2

    cmpg-float v6, v6, v9

    if-ltz v6, :cond_0

    .line 57
    iget v6, v4, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget v7, p0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 58
    .local v3, "minY":F
    iget v6, v4, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget v7, v4, Lcom/badlogic/gdx/math/Rectangle;->height:F

    add-float/2addr v6, v7

    iget v7, p0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    iget v8, p0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    add-float/2addr v7, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 59
    .local v1, "maxY":F
    sub-float v6, v1, v3

    cmpg-float v6, v6, v9

    if-ltz v6, :cond_0

    .line 61
    iput v2, p0, Lcom/badlogic/gdx/math/Rectangle;->x:F

    .line 62
    iput v3, p0, Lcom/badlogic/gdx/math/Rectangle;->y:F

    .line 63
    sub-float v5, v0, v2

    iput v5, p0, Lcom/badlogic/gdx/math/Rectangle;->width:F

    .line 64
    sub-float v5, v1, v3

    invoke-static {v9, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    iput v5, p0, Lcom/badlogic/gdx/math/Rectangle;->height:F

    goto :goto_1
.end method
