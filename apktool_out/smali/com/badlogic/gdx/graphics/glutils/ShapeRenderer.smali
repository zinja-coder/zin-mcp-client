.class public Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;
.super Ljava/lang/Object;
.source "ShapeRenderer.java"

# interfaces
.implements Lcom/badlogic/gdx/utils/Disposable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;
    }
.end annotation


# instance fields
.field private autoShapeType:Z

.field private final color:Lcom/badlogic/gdx/graphics/Color;

.field private final combinedMatrix:Lcom/badlogic/gdx/math/Matrix4;

.field private defaultRectLineWidth:F

.field private matrixDirty:Z

.field private final projectionMatrix:Lcom/badlogic/gdx/math/Matrix4;

.field private final renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

.field private shapeType:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

.field private final tmp:Lcom/badlogic/gdx/math/Vector2;

.field private final transformMatrix:Lcom/badlogic/gdx/math/Matrix4;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 107
    const/16 v0, 0x1388

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;-><init>(I)V

    .line 108
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "maxVertices"    # I

    .prologue
    .line 111
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;-><init>(ILcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    .line 112
    return-void
.end method

.method public constructor <init>(ILcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V
    .locals 7
    .param p1, "maxVertices"    # I
    .param p2, "defaultShader"    # Lcom/badlogic/gdx/graphics/glutils/ShaderProgram;

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x1

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-boolean v2, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->matrixDirty:Z

    .line 97
    new-instance v0, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->projectionMatrix:Lcom/badlogic/gdx/math/Matrix4;

    .line 98
    new-instance v0, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->transformMatrix:Lcom/badlogic/gdx/math/Matrix4;

    .line 99
    new-instance v0, Lcom/badlogic/gdx/math/Matrix4;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Matrix4;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->combinedMatrix:Lcom/badlogic/gdx/math/Matrix4;

    .line 100
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->tmp:Lcom/badlogic/gdx/math/Vector2;

    .line 101
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(FFFF)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    .line 104
    const/high16 v0, 0x3f400000    # 0.75f

    iput v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->defaultRectLineWidth:F

    .line 115
    if-nez p2, :cond_0

    .line 116
    new-instance v0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;

    invoke-direct {v0, p1, v2, v3, v2}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;-><init>(IZZI)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    .line 120
    :goto_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->projectionMatrix:Lcom/badlogic/gdx/math/Matrix4;

    sget-object v1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v1}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sget-object v2, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v2}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v6, v6, v1, v2}, Lcom/badlogic/gdx/math/Matrix4;->setToOrtho2D(FFFF)Lcom/badlogic/gdx/math/Matrix4;

    .line 121
    iput-boolean v3, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->matrixDirty:Z

    .line 122
    return-void

    .line 118
    :cond_0
    new-instance v0, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;

    move v1, p1

    move v4, v2

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer20;-><init>(IZZILcom/badlogic/gdx/graphics/glutils/ShaderProgram;)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    goto :goto_0
.end method

.method private check(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;I)V
    .locals 4
    .param p1, "preferred"    # Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;
    .param p2, "other"    # Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;
    .param p3, "newVertices"    # I

    .prologue
    .line 1077
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->shapeType:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "begin must be called first."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1079
    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->shapeType:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    if-eq v1, p1, :cond_4

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->shapeType:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    if-eq v1, p2, :cond_4

    .line 1081
    iget-boolean v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->autoShapeType:Z

    if-nez v1, :cond_2

    .line 1082
    if-nez p2, :cond_1

    .line 1083
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Must call begin(ShapeType."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1085
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Must call begin(ShapeType."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") or begin(ShapeType."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1087
    :cond_2
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->end()V

    .line 1088
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->begin(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;)V

    .line 1100
    :cond_3
    :goto_0
    return-void

    .line 1089
    :cond_4
    iget-boolean v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->matrixDirty:Z

    if-eqz v1, :cond_5

    .line 1091
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->shapeType:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    .line 1092
    .local v0, "type":Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->end()V

    .line 1093
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->begin(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;)V

    goto :goto_0

    .line 1094
    .end local v0    # "type":Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;
    :cond_5
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->getMaxVertices()I

    move-result v1

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v2}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->getNumVertices()I

    move-result v2

    sub-int/2addr v1, v2

    if-ge v1, p3, :cond_3

    .line 1096
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->shapeType:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    .line 1097
    .restart local v0    # "type":Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->end()V

    .line 1098
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->begin(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;)V

    goto :goto_0
.end method


# virtual methods
.method public arc(FFFFF)V
    .locals 7
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "radius"    # F
    .param p4, "start"    # F
    .param p5, "degrees"    # F

    .prologue
    .line 784
    const/4 v0, 0x1

    const/high16 v1, 0x40c00000    # 6.0f

    float-to-double v2, p3

    invoke-static {v2, v3}, Ljava/lang/Math;->cbrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float/2addr v1, v2

    const/high16 v2, 0x43b40000    # 360.0f

    div-float v2, p5, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v6

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->arc(FFFFFI)V

    .line 785
    return-void
.end method

.method public arc(FFFFFI)V
    .locals 13
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "radius"    # F
    .param p4, "start"    # F
    .param p5, "degrees"    # F
    .param p6, "segments"    # I

    .prologue
    .line 789
    if-gtz p6, :cond_0

    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "segments must be > 0."

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 790
    :cond_0
    iget-object v9, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v9}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v1

    .line 791
    .local v1, "colorBits":F
    const v9, 0x40c90fdb

    const/high16 v10, 0x43b40000    # 360.0f

    div-float v10, p5, v10

    mul-float/2addr v9, v10

    move/from16 v0, p6

    int-to-float v10, v0

    div-float v8, v9, v10

    .line 792
    .local v8, "theta":F
    invoke-static {v8}, Lcom/badlogic/gdx/math/MathUtils;->cos(F)F

    move-result v2

    .line 793
    .local v2, "cos":F
    invoke-static {v8}, Lcom/badlogic/gdx/math/MathUtils;->sin(F)F

    move-result v6

    .line 794
    .local v6, "sin":F
    const v9, 0x3c8efa35

    mul-float v9, v9, p4

    invoke-static {v9}, Lcom/badlogic/gdx/math/MathUtils;->cos(F)F

    move-result v9

    mul-float v3, p3, v9

    .line 795
    .local v3, "cx":F
    const v9, 0x3c8efa35

    mul-float v9, v9, p4

    invoke-static {v9}, Lcom/badlogic/gdx/math/MathUtils;->sin(F)F

    move-result v9

    mul-float v4, p3, v9

    .line 797
    .local v4, "cy":F
    iget-object v9, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->shapeType:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    sget-object v10, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->Line:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    if-ne v9, v10, :cond_2

    .line 798
    sget-object v9, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->Line:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    sget-object v10, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->Filled:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    mul-int/lit8 v11, p6, 0x2

    add-int/lit8 v11, v11, 0x2

    invoke-direct {p0, v9, v10, v11}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->check(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;I)V

    .line 800
    iget-object v9, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v9, v1}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 801
    iget-object v9, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    const/4 v10, 0x0

    invoke-interface {v9, p1, p2, v10}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 802
    iget-object v9, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v9, v1}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 803
    iget-object v9, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v10, p1, v3

    add-float v11, p2, v4

    const/4 v12, 0x0

    invoke-interface {v9, v10, v11, v12}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 804
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    move/from16 v0, p6

    if-ge v5, v0, :cond_1

    .line 805
    iget-object v9, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v9, v1}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 806
    iget-object v9, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v10, p1, v3

    add-float v11, p2, v4

    const/4 v12, 0x0

    invoke-interface {v9, v10, v11, v12}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 807
    move v7, v3

    .line 808
    .local v7, "temp":F
    mul-float v9, v2, v3

    mul-float v10, v6, v4

    sub-float v3, v9, v10

    .line 809
    mul-float v9, v6, v7

    mul-float v10, v2, v4

    add-float v4, v9, v10

    .line 810
    iget-object v9, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v9, v1}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 811
    iget-object v9, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v10, p1, v3

    add-float v11, p2, v4

    const/4 v12, 0x0

    invoke-interface {v9, v10, v11, v12}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 804
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 813
    .end local v7    # "temp":F
    :cond_1
    iget-object v9, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v9, v1}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 814
    iget-object v9, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v10, p1, v3

    add-float v11, p2, v4

    const/4 v12, 0x0

    invoke-interface {v9, v10, v11, v12}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 835
    :goto_1
    move v7, v3

    .line 836
    .restart local v7    # "temp":F
    const/4 v3, 0x0

    .line 837
    const/4 v4, 0x0

    .line 838
    iget-object v9, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v9, v1}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 839
    iget-object v9, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v10, p1, v3

    add-float v11, p2, v4

    const/4 v12, 0x0

    invoke-interface {v9, v10, v11, v12}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 840
    return-void

    .line 816
    .end local v5    # "i":I
    .end local v7    # "temp":F
    :cond_2
    sget-object v9, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->Line:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    sget-object v10, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->Filled:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    mul-int/lit8 v11, p6, 0x3

    add-int/lit8 v11, v11, 0x3

    invoke-direct {p0, v9, v10, v11}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->check(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;I)V

    .line 818
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_2
    move/from16 v0, p6

    if-ge v5, v0, :cond_3

    .line 819
    iget-object v9, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v9, v1}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 820
    iget-object v9, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    const/4 v10, 0x0

    invoke-interface {v9, p1, p2, v10}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 821
    iget-object v9, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v9, v1}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 822
    iget-object v9, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v10, p1, v3

    add-float v11, p2, v4

    const/4 v12, 0x0

    invoke-interface {v9, v10, v11, v12}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 823
    move v7, v3

    .line 824
    .restart local v7    # "temp":F
    mul-float v9, v2, v3

    mul-float v10, v6, v4

    sub-float v3, v9, v10

    .line 825
    mul-float v9, v6, v7

    mul-float v10, v2, v4

    add-float v4, v9, v10

    .line 826
    iget-object v9, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v9, v1}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 827
    iget-object v9, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v10, p1, v3

    add-float v11, p2, v4

    const/4 v12, 0x0

    invoke-interface {v9, v10, v11, v12}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 818
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 829
    .end local v7    # "temp":F
    :cond_3
    iget-object v9, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v9, v1}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 830
    iget-object v9, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    const/4 v10, 0x0

    invoke-interface {v9, p1, p2, v10}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 831
    iget-object v9, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v9, v1}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 832
    iget-object v9, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v10, p1, v3

    add-float v11, p2, v4

    const/4 v12, 0x0

    invoke-interface {v9, v10, v11, v12}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    goto :goto_1
.end method

.method public begin()V
    .locals 2

    .prologue
    .line 198
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->autoShapeType:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "autoShapeType must be true to use this method."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 199
    :cond_0
    sget-object v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->Line:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->begin(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;)V

    .line 200
    return-void
.end method

.method public begin(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;)V
    .locals 3
    .param p1, "type"    # Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    .prologue
    .line 206
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->shapeType:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Call end() before beginning a new shape batch."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 207
    :cond_0
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->shapeType:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    .line 208
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->matrixDirty:Z

    if-eqz v0, :cond_1

    .line 209
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->combinedMatrix:Lcom/badlogic/gdx/math/Matrix4;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->projectionMatrix:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    .line 210
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->combinedMatrix:Lcom/badlogic/gdx/math/Matrix4;

    iget-object v0, v0, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->transformMatrix:Lcom/badlogic/gdx/math/Matrix4;

    iget-object v1, v1, Lcom/badlogic/gdx/math/Matrix4;->val:[F

    invoke-static {v0, v1}, Lcom/badlogic/gdx/math/Matrix4;->mul([F[F)V

    .line 211
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->matrixDirty:Z

    .line 213
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->combinedMatrix:Lcom/badlogic/gdx/math/Matrix4;

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->shapeType:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->getGlType()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->begin(Lcom/badlogic/gdx/math/Matrix4;I)V

    .line 214
    return-void
.end method

.method public box(FFFFFF)V
    .locals 5
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F
    .param p6, "depth"    # F

    .prologue
    .line 611
    neg-float p6, p6

    .line 612
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v0

    .line 613
    .local v0, "colorBits":F
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->shapeType:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    sget-object v2, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->Line:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    if-ne v1, v2, :cond_0

    .line 614
    sget-object v1, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->Line:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    sget-object v2, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->Filled:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    const/16 v3, 0x18

    invoke-direct {p0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->check(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;I)V

    .line 616
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 617
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, p1, p2, p3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 618
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 619
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v2, p1, p4

    invoke-interface {v1, v2, p2, p3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 621
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 622
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v2, p1, p4

    invoke-interface {v1, v2, p2, p3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 623
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 624
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v2, p1, p4

    add-float v3, p3, p6

    invoke-interface {v1, v2, p2, v3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 626
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 627
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v2, p1, p4

    add-float v3, p3, p6

    invoke-interface {v1, v2, p2, v3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 628
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 629
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v2, p3, p6

    invoke-interface {v1, p1, p2, v2}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 631
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 632
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v2, p3, p6

    invoke-interface {v1, p1, p2, v2}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 633
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 634
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, p1, p2, p3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 636
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 637
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, p1, p2, p3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 638
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 639
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v2, p2, p5

    invoke-interface {v1, p1, v2, p3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 641
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 642
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v2, p2, p5

    invoke-interface {v1, p1, v2, p3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 643
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 644
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v2, p1, p4

    add-float v3, p2, p5

    invoke-interface {v1, v2, v3, p3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 646
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 647
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v2, p1, p4

    add-float v3, p2, p5

    invoke-interface {v1, v2, v3, p3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 648
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 649
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v2, p1, p4

    add-float v3, p2, p5

    add-float v4, p3, p6

    invoke-interface {v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 651
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 652
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v2, p1, p4

    add-float v3, p2, p5

    add-float v4, p3, p6

    invoke-interface {v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 653
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 654
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v2, p2, p5

    add-float v3, p3, p6

    invoke-interface {v1, p1, v2, v3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 656
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 657
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v2, p2, p5

    add-float v3, p3, p6

    invoke-interface {v1, p1, v2, v3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 658
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 659
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v2, p2, p5

    invoke-interface {v1, p1, v2, p3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 661
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 662
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v2, p1, p4

    invoke-interface {v1, v2, p2, p3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 663
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 664
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v2, p1, p4

    add-float v3, p2, p5

    invoke-interface {v1, v2, v3, p3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 666
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 667
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v2, p1, p4

    add-float v3, p3, p6

    invoke-interface {v1, v2, p2, v3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 668
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 669
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v2, p1, p4

    add-float v3, p2, p5

    add-float v4, p3, p6

    invoke-interface {v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 671
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 672
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v2, p3, p6

    invoke-interface {v1, p1, p2, v2}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 673
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 674
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v2, p2, p5

    add-float v3, p3, p6

    invoke-interface {v1, p1, v2, v3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 769
    :goto_0
    return-void

    .line 676
    :cond_0
    sget-object v1, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->Line:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    sget-object v2, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->Filled:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    const/16 v3, 0x24

    invoke-direct {p0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->check(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;I)V

    .line 679
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 680
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, p1, p2, p3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 681
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 682
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v2, p1, p4

    invoke-interface {v1, v2, p2, p3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 683
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 684
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v2, p1, p4

    add-float v3, p2, p5

    invoke-interface {v1, v2, v3, p3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 686
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 687
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, p1, p2, p3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 688
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 689
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v2, p1, p4

    add-float v3, p2, p5

    invoke-interface {v1, v2, v3, p3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 690
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 691
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v2, p2, p5

    invoke-interface {v1, p1, v2, p3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 694
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 695
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v2, p1, p4

    add-float v3, p3, p6

    invoke-interface {v1, v2, p2, v3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 696
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 697
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v2, p3, p6

    invoke-interface {v1, p1, p2, v2}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 698
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 699
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v2, p1, p4

    add-float v3, p2, p5

    add-float v4, p3, p6

    invoke-interface {v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 701
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 702
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v2, p2, p5

    add-float v3, p3, p6

    invoke-interface {v1, p1, v2, v3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 703
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 704
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v2, p3, p6

    invoke-interface {v1, p1, p2, v2}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 705
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 706
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v2, p1, p4

    add-float v3, p2, p5

    add-float v4, p3, p6

    invoke-interface {v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 709
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 710
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v2, p3, p6

    invoke-interface {v1, p1, p2, v2}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 711
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 712
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, p1, p2, p3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 713
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 714
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v2, p2, p5

    invoke-interface {v1, p1, v2, p3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 716
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 717
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v2, p3, p6

    invoke-interface {v1, p1, p2, v2}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 718
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 719
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v2, p2, p5

    invoke-interface {v1, p1, v2, p3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 720
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 721
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v2, p2, p5

    add-float v3, p3, p6

    invoke-interface {v1, p1, v2, v3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 724
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 725
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v2, p1, p4

    invoke-interface {v1, v2, p2, p3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 726
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 727
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v2, p1, p4

    add-float v3, p3, p6

    invoke-interface {v1, v2, p2, v3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 728
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 729
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v2, p1, p4

    add-float v3, p2, p5

    add-float v4, p3, p6

    invoke-interface {v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 731
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 732
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v2, p1, p4

    invoke-interface {v1, v2, p2, p3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 733
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 734
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v2, p1, p4

    add-float v3, p2, p5

    add-float v4, p3, p6

    invoke-interface {v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 735
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 736
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v2, p1, p4

    add-float v3, p2, p5

    invoke-interface {v1, v2, v3, p3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 739
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 740
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v2, p2, p5

    invoke-interface {v1, p1, v2, p3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 741
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 742
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v2, p1, p4

    add-float v3, p2, p5

    invoke-interface {v1, v2, v3, p3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 743
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 744
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v2, p1, p4

    add-float v3, p2, p5

    add-float v4, p3, p6

    invoke-interface {v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 746
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 747
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v2, p2, p5

    invoke-interface {v1, p1, v2, p3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 748
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 749
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v2, p1, p4

    add-float v3, p2, p5

    add-float v4, p3, p6

    invoke-interface {v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 750
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 751
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v2, p2, p5

    add-float v3, p3, p6

    invoke-interface {v1, p1, v2, v3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 754
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 755
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v2, p3, p6

    invoke-interface {v1, p1, p2, v2}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 756
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 757
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v2, p1, p4

    add-float v3, p3, p6

    invoke-interface {v1, v2, p2, v3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 758
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 759
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v2, p1, p4

    invoke-interface {v1, v2, p2, p3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 761
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 762
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v2, p3, p6

    invoke-interface {v1, p1, p2, v2}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 763
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 764
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v2, p1, p4

    invoke-interface {v1, v2, p2, p3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 765
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 766
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, p1, p2, p3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    goto/16 :goto_0
.end method

.method public circle(FFF)V
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "radius"    # F

    .prologue
    .line 844
    const/4 v0, 0x1

    const/high16 v1, 0x40c00000    # 6.0f

    float-to-double v2, p3

    invoke-static {v2, v3}, Ljava/lang/Math;->cbrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->circle(FFFI)V

    .line 845
    return-void
.end method

.method public circle(FFFI)V
    .locals 13
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "radius"    # F
    .param p4, "segments"    # I

    .prologue
    .line 849
    if-gtz p4, :cond_0

    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "segments must be > 0."

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 850
    :cond_0
    iget-object v9, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v9}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v2

    .line 851
    .local v2, "colorBits":F
    const v9, 0x40c90fdb

    move/from16 v0, p4

    int-to-float v10, v0

    div-float v1, v9, v10

    .line 852
    .local v1, "angle":F
    invoke-static {v1}, Lcom/badlogic/gdx/math/MathUtils;->cos(F)F

    move-result v3

    .line 853
    .local v3, "cos":F
    invoke-static {v1}, Lcom/badlogic/gdx/math/MathUtils;->sin(F)F

    move-result v7

    .line 854
    .local v7, "sin":F
    move/from16 v4, p3

    .local v4, "cx":F
    const/4 v5, 0x0

    .line 855
    .local v5, "cy":F
    iget-object v9, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->shapeType:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    sget-object v10, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->Line:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    if-ne v9, v10, :cond_2

    .line 856
    sget-object v9, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->Line:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    sget-object v10, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->Filled:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    mul-int/lit8 v11, p4, 0x2

    add-int/lit8 v11, v11, 0x2

    invoke-direct {p0, v9, v10, v11}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->check(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;I)V

    .line 857
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    move/from16 v0, p4

    if-ge v6, v0, :cond_1

    .line 858
    iget-object v9, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v9, v2}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 859
    iget-object v9, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v10, p1, v4

    add-float v11, p2, v5

    const/4 v12, 0x0

    invoke-interface {v9, v10, v11, v12}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 860
    move v8, v4

    .line 861
    .local v8, "temp":F
    mul-float v9, v3, v4

    mul-float v10, v7, v5

    sub-float v4, v9, v10

    .line 862
    mul-float v9, v7, v8

    mul-float v10, v3, v5

    add-float v5, v9, v10

    .line 863
    iget-object v9, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v9, v2}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 864
    iget-object v9, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v10, p1, v4

    add-float v11, p2, v5

    const/4 v12, 0x0

    invoke-interface {v9, v10, v11, v12}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 857
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 867
    .end local v8    # "temp":F
    :cond_1
    iget-object v9, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v9, v2}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 868
    iget-object v9, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v10, p1, v4

    add-float v11, p2, v5

    const/4 v12, 0x0

    invoke-interface {v9, v10, v11, v12}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 890
    :goto_1
    move v8, v4

    .line 891
    .restart local v8    # "temp":F
    move/from16 v4, p3

    .line 892
    const/4 v5, 0x0

    .line 893
    iget-object v9, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v9, v2}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 894
    iget-object v9, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v10, p1, v4

    add-float v11, p2, v5

    const/4 v12, 0x0

    invoke-interface {v9, v10, v11, v12}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 895
    return-void

    .line 870
    .end local v6    # "i":I
    .end local v8    # "temp":F
    :cond_2
    sget-object v9, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->Line:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    sget-object v10, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->Filled:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    mul-int/lit8 v11, p4, 0x3

    add-int/lit8 v11, v11, 0x3

    invoke-direct {p0, v9, v10, v11}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->check(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;I)V

    .line 871
    add-int/lit8 p4, p4, -0x1

    .line 872
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_2
    move/from16 v0, p4

    if-ge v6, v0, :cond_3

    .line 873
    iget-object v9, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v9, v2}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 874
    iget-object v9, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    const/4 v10, 0x0

    invoke-interface {v9, p1, p2, v10}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 875
    iget-object v9, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v9, v2}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 876
    iget-object v9, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v10, p1, v4

    add-float v11, p2, v5

    const/4 v12, 0x0

    invoke-interface {v9, v10, v11, v12}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 877
    move v8, v4

    .line 878
    .restart local v8    # "temp":F
    mul-float v9, v3, v4

    mul-float v10, v7, v5

    sub-float v4, v9, v10

    .line 879
    mul-float v9, v7, v8

    mul-float v10, v3, v5

    add-float v5, v9, v10

    .line 880
    iget-object v9, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v9, v2}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 881
    iget-object v9, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v10, p1, v4

    add-float v11, p2, v5

    const/4 v12, 0x0

    invoke-interface {v9, v10, v11, v12}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 872
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 884
    .end local v8    # "temp":F
    :cond_3
    iget-object v9, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v9, v2}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 885
    iget-object v9, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    const/4 v10, 0x0

    invoke-interface {v9, p1, p2, v10}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 886
    iget-object v9, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v9, v2}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 887
    iget-object v9, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v10, p1, v4

    add-float v11, p2, v5

    const/4 v12, 0x0

    invoke-interface {v9, v10, v11, v12}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    goto :goto_1
.end method

.method public cone(FFFFF)V
    .locals 7
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F
    .param p4, "radius"    # F
    .param p5, "height"    # F

    .prologue
    .line 937
    const/4 v0, 0x1

    const/high16 v1, 0x40800000    # 4.0f

    float-to-double v2, p4

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v6

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->cone(FFFFFI)V

    .line 938
    return-void
.end method

.method public cone(FFFFFI)V
    .locals 13
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F
    .param p4, "radius"    # F
    .param p5, "height"    # F
    .param p6, "segments"    # I

    .prologue
    .line 942
    if-gtz p6, :cond_0

    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v11, "segments must be > 0."

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 943
    :cond_0
    sget-object v10, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->Line:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    sget-object v11, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->Filled:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    mul-int/lit8 v12, p6, 0x4

    add-int/lit8 v12, v12, 0x2

    invoke-direct {p0, v10, v11, v12}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->check(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;I)V

    .line 944
    iget-object v10, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v10}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v2

    .line 945
    .local v2, "colorBits":F
    const v10, 0x40c90fdb

    move/from16 v0, p6

    int-to-float v11, v0

    div-float v1, v10, v11

    .line 946
    .local v1, "angle":F
    invoke-static {v1}, Lcom/badlogic/gdx/math/MathUtils;->cos(F)F

    move-result v3

    .line 947
    .local v3, "cos":F
    invoke-static {v1}, Lcom/badlogic/gdx/math/MathUtils;->sin(F)F

    move-result v7

    .line 948
    .local v7, "sin":F
    move/from16 v4, p4

    .local v4, "cx":F
    const/4 v5, 0x0

    .line 949
    .local v5, "cy":F
    iget-object v10, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->shapeType:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    sget-object v11, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->Line:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    if-ne v10, v11, :cond_3

    .line 950
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    move/from16 v0, p6

    if-ge v6, v0, :cond_1

    .line 951
    iget-object v10, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v10, v2}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 952
    iget-object v10, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v11, p1, v4

    add-float v12, p2, v5

    move/from16 v0, p3

    invoke-interface {v10, v11, v12, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 953
    iget-object v10, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v10, v2}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 954
    iget-object v10, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v11, p3, p5

    invoke-interface {v10, p1, p2, v11}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 955
    iget-object v10, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v10, v2}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 956
    iget-object v10, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v11, p1, v4

    add-float v12, p2, v5

    move/from16 v0, p3

    invoke-interface {v10, v11, v12, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 957
    move v8, v4

    .line 958
    .local v8, "temp":F
    mul-float v10, v3, v4

    mul-float v11, v7, v5

    sub-float v4, v10, v11

    .line 959
    mul-float v10, v7, v8

    mul-float v11, v3, v5

    add-float v5, v10, v11

    .line 960
    iget-object v10, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v10, v2}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 961
    iget-object v10, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v11, p1, v4

    add-float v12, p2, v5

    move/from16 v0, p3

    invoke-interface {v10, v11, v12, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 950
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 964
    .end local v8    # "temp":F
    :cond_1
    iget-object v10, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v10, v2}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 965
    iget-object v10, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v11, p1, v4

    add-float v12, p2, v5

    move/from16 v0, p3

    invoke-interface {v10, v11, v12, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 993
    :goto_1
    move v8, v4

    .line 994
    .restart local v8    # "temp":F
    move v9, v5

    .line 995
    .local v9, "temp2":F
    move/from16 v4, p4

    .line 996
    const/4 v5, 0x0

    .line 997
    iget-object v10, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v10, v2}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 998
    iget-object v10, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v11, p1, v4

    add-float v12, p2, v5

    move/from16 v0, p3

    invoke-interface {v10, v11, v12, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 999
    iget-object v10, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->shapeType:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    sget-object v11, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->Line:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    if-eq v10, v11, :cond_2

    .line 1000
    iget-object v10, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v10, v2}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 1001
    iget-object v10, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v11, p1, v8

    add-float v12, p2, v9

    move/from16 v0, p3

    invoke-interface {v10, v11, v12, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 1002
    iget-object v10, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v10, v2}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 1003
    iget-object v10, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v11, p1, v4

    add-float v12, p2, v5

    move/from16 v0, p3

    invoke-interface {v10, v11, v12, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 1004
    iget-object v10, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v10, v2}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 1005
    iget-object v10, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v11, p3, p5

    invoke-interface {v10, p1, p2, v11}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 1007
    :cond_2
    return-void

    .line 967
    .end local v6    # "i":I
    .end local v8    # "temp":F
    .end local v9    # "temp2":F
    :cond_3
    add-int/lit8 p6, p6, -0x1

    .line 968
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_2
    move/from16 v0, p6

    if-ge v6, v0, :cond_4

    .line 969
    iget-object v10, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v10, v2}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 970
    iget-object v10, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    move/from16 v0, p3

    invoke-interface {v10, p1, p2, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 971
    iget-object v10, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v10, v2}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 972
    iget-object v10, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v11, p1, v4

    add-float v12, p2, v5

    move/from16 v0, p3

    invoke-interface {v10, v11, v12, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 973
    move v8, v4

    .line 974
    .restart local v8    # "temp":F
    move v9, v5

    .line 975
    .restart local v9    # "temp2":F
    mul-float v10, v3, v4

    mul-float v11, v7, v5

    sub-float v4, v10, v11

    .line 976
    mul-float v10, v7, v8

    mul-float v11, v3, v5

    add-float v5, v10, v11

    .line 977
    iget-object v10, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v10, v2}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 978
    iget-object v10, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v11, p1, v4

    add-float v12, p2, v5

    move/from16 v0, p3

    invoke-interface {v10, v11, v12, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 980
    iget-object v10, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v10, v2}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 981
    iget-object v10, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v11, p1, v8

    add-float v12, p2, v9

    move/from16 v0, p3

    invoke-interface {v10, v11, v12, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 982
    iget-object v10, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v10, v2}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 983
    iget-object v10, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v11, p1, v4

    add-float v12, p2, v5

    move/from16 v0, p3

    invoke-interface {v10, v11, v12, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 984
    iget-object v10, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v10, v2}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 985
    iget-object v10, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v11, p3, p5

    invoke-interface {v10, p1, p2, v11}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 968
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 988
    .end local v8    # "temp":F
    .end local v9    # "temp2":F
    :cond_4
    iget-object v10, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v10, v2}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 989
    iget-object v10, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    move/from16 v0, p3

    invoke-interface {v10, p1, p2, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 990
    iget-object v10, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v10, v2}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 991
    iget-object v10, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v11, p1, v4

    add-float v12, p2, v5

    move/from16 v0, p3

    invoke-interface {v10, v11, v12, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    goto/16 :goto_1
.end method

.method public curve(FFFFFFFFI)V
    .locals 28
    .param p1, "x1"    # F
    .param p2, "y1"    # F
    .param p3, "cx1"    # F
    .param p4, "cy1"    # F
    .param p5, "cx2"    # F
    .param p6, "cy2"    # F
    .param p7, "x2"    # F
    .param p8, "y2"    # F
    .param p9, "segments"    # I

    .prologue
    .line 281
    sget-object v25, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->Line:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    const/16 v26, 0x0

    mul-int/lit8 v27, p9, 0x2

    add-int/lit8 v27, v27, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    move/from16 v3, v27

    invoke-direct {v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->check(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;I)V

    .line 282
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v4

    .line 285
    .local v4, "colorBits":F
    const/high16 v25, 0x3f800000    # 1.0f

    move/from16 v0, p9

    int-to-float v0, v0

    move/from16 v26, v0

    div-float v18, v25, v26

    .line 286
    .local v18, "subdiv_step":F
    mul-float v19, v18, v18

    .line 287
    .local v19, "subdiv_step2":F
    mul-float v25, v18, v18

    mul-float v20, v25, v18

    .line 289
    .local v20, "subdiv_step3":F
    const/high16 v25, 0x40400000    # 3.0f

    mul-float v13, v25, v18

    .line 290
    .local v13, "pre1":F
    const/high16 v25, 0x40400000    # 3.0f

    mul-float v14, v25, v19

    .line 291
    .local v14, "pre2":F
    const/high16 v25, 0x40c00000    # 6.0f

    mul-float v15, v25, v19

    .line 292
    .local v15, "pre4":F
    const/high16 v25, 0x40c00000    # 6.0f

    mul-float v16, v25, v20

    .line 294
    .local v16, "pre5":F
    const/high16 v25, 0x40000000    # 2.0f

    mul-float v25, v25, p3

    sub-float v25, p1, v25

    add-float v21, v25, p5

    .line 295
    .local v21, "tmp1x":F
    const/high16 v25, 0x40000000    # 2.0f

    mul-float v25, v25, p4

    sub-float v25, p2, v25

    add-float v22, v25, p6

    .line 297
    .local v22, "tmp1y":F
    sub-float v25, p3, p5

    const/high16 v26, 0x40400000    # 3.0f

    mul-float v25, v25, v26

    sub-float v25, v25, p1

    add-float v23, v25, p7

    .line 298
    .local v23, "tmp2x":F
    sub-float v25, p4, p6

    const/high16 v26, 0x40400000    # 3.0f

    mul-float v25, v25, v26

    sub-float v25, v25, p2

    add-float v24, v25, p8

    .line 300
    .local v24, "tmp2y":F
    move/from16 v11, p1

    .line 301
    .local v11, "fx":F
    move/from16 v12, p2

    .line 303
    .local v12, "fy":F
    sub-float v25, p3, p1

    mul-float v25, v25, v13

    mul-float v26, v21, v14

    add-float v25, v25, v26

    mul-float v26, v23, v20

    add-float v9, v25, v26

    .line 304
    .local v9, "dfx":F
    sub-float v25, p4, p2

    mul-float v25, v25, v13

    mul-float v26, v22, v14

    add-float v25, v25, v26

    mul-float v26, v24, v20

    add-float v10, v25, v26

    .line 306
    .local v10, "dfy":F
    mul-float v25, v21, v15

    mul-float v26, v23, v16

    add-float v7, v25, v26

    .line 307
    .local v7, "ddfx":F
    mul-float v25, v22, v15

    mul-float v26, v24, v16

    add-float v8, v25, v26

    .line 309
    .local v8, "ddfy":F
    mul-float v5, v23, v16

    .line 310
    .local v5, "dddfx":F
    mul-float v6, v24, v16

    .local v6, "dddfy":F
    move/from16 v17, p9

    .line 312
    .end local p9    # "segments":I
    .local v17, "segments":I
    :goto_0
    add-int/lit8 p9, v17, -0x1

    .end local v17    # "segments":I
    .restart local p9    # "segments":I
    if-lez v17, :cond_0

    .line 313
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-interface {v0, v4}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 314
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-interface {v0, v11, v12, v1}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 315
    add-float/2addr v11, v9

    .line 316
    add-float/2addr v12, v10

    .line 317
    add-float/2addr v9, v7

    .line 318
    add-float/2addr v10, v8

    .line 319
    add-float/2addr v7, v5

    .line 320
    add-float/2addr v8, v6

    .line 321
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-interface {v0, v4}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 322
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-interface {v0, v11, v12, v1}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    move/from16 v17, p9

    .end local p9    # "segments":I
    .restart local v17    # "segments":I
    goto :goto_0

    .line 324
    .end local v17    # "segments":I
    .restart local p9    # "segments":I
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-interface {v0, v4}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 325
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-interface {v0, v11, v12, v1}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 326
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-interface {v0, v4}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 327
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, v25

    move/from16 v1, p7

    move/from16 v2, p8

    move/from16 v3, v26

    invoke-interface {v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 328
    return-void
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 1129
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->dispose()V

    .line 1130
    return-void
.end method

.method public ellipse(FFFF)V
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "width"    # F
    .param p4, "height"    # F

    .prologue
    const/high16 v3, 0x3f000000    # 0.5f

    .line 899
    const/4 v0, 0x1

    const/high16 v1, 0x41400000    # 12.0f

    mul-float v2, p3, v3

    mul-float/2addr v3, p4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->cbrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->ellipse(FFFFI)V

    .line 900
    return-void
.end method

.method public ellipse(FFFFI)V
    .locals 9
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "width"    # F
    .param p4, "height"    # F
    .param p5, "segments"    # I

    .prologue
    .line 904
    if-gtz p5, :cond_0

    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "segments must be > 0."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 905
    :cond_0
    sget-object v5, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->Line:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    sget-object v6, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->Filled:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    mul-int/lit8 v7, p5, 0x3

    invoke-direct {p0, v5, v6, v7}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->check(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;I)V

    .line 906
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v5}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v1

    .line 907
    .local v1, "colorBits":F
    const v5, 0x40c90fdb

    int-to-float v6, p5

    div-float v0, v5, v6

    .line 909
    .local v0, "angle":F
    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, p3, v5

    add-float v2, p1, v5

    .local v2, "cx":F
    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, p4, v5

    add-float v3, p2, v5

    .line 910
    .local v3, "cy":F
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->shapeType:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    sget-object v6, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->Line:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    if-ne v5, v6, :cond_1

    .line 911
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, p5, :cond_2

    .line 912
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v5, v1}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 913
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float/2addr v6, p3

    int-to-float v7, v4

    mul-float/2addr v7, v0

    invoke-static {v7}, Lcom/badlogic/gdx/math/MathUtils;->cos(F)F

    move-result v7

    mul-float/2addr v6, v7

    add-float/2addr v6, v2

    const/high16 v7, 0x3f000000    # 0.5f

    mul-float/2addr v7, p4

    int-to-float v8, v4

    mul-float/2addr v8, v0

    invoke-static {v8}, Lcom/badlogic/gdx/math/MathUtils;->sin(F)F

    move-result v8

    mul-float/2addr v7, v8

    add-float/2addr v7, v3

    const/4 v8, 0x0

    invoke-interface {v5, v6, v7, v8}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 915
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v5, v1}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 916
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float/2addr v6, p3

    add-int/lit8 v7, v4, 0x1

    int-to-float v7, v7

    mul-float/2addr v7, v0

    invoke-static {v7}, Lcom/badlogic/gdx/math/MathUtils;->cos(F)F

    move-result v7

    mul-float/2addr v6, v7

    add-float/2addr v6, v2

    const/high16 v7, 0x3f000000    # 0.5f

    mul-float/2addr v7, p4

    add-int/lit8 v8, v4, 0x1

    int-to-float v8, v8

    mul-float/2addr v8, v0

    invoke-static {v8}, Lcom/badlogic/gdx/math/MathUtils;->sin(F)F

    move-result v8

    mul-float/2addr v7, v8

    add-float/2addr v7, v3

    const/4 v8, 0x0

    invoke-interface {v5, v6, v7, v8}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 911
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 920
    .end local v4    # "i":I
    :cond_1
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_1
    if-ge v4, p5, :cond_2

    .line 921
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v5, v1}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 922
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float/2addr v6, p3

    int-to-float v7, v4

    mul-float/2addr v7, v0

    invoke-static {v7}, Lcom/badlogic/gdx/math/MathUtils;->cos(F)F

    move-result v7

    mul-float/2addr v6, v7

    add-float/2addr v6, v2

    const/high16 v7, 0x3f000000    # 0.5f

    mul-float/2addr v7, p4

    int-to-float v8, v4

    mul-float/2addr v8, v0

    invoke-static {v8}, Lcom/badlogic/gdx/math/MathUtils;->sin(F)F

    move-result v8

    mul-float/2addr v7, v8

    add-float/2addr v7, v3

    const/4 v8, 0x0

    invoke-interface {v5, v6, v7, v8}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 924
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v5, v1}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 925
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    const/4 v6, 0x0

    invoke-interface {v5, v2, v3, v6}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 927
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v5, v1}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 928
    iget-object v5, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float/2addr v6, p3

    add-int/lit8 v7, v4, 0x1

    int-to-float v7, v7

    mul-float/2addr v7, v0

    invoke-static {v7}, Lcom/badlogic/gdx/math/MathUtils;->cos(F)F

    move-result v7

    mul-float/2addr v6, v7

    add-float/2addr v6, v2

    const/high16 v7, 0x3f000000    # 0.5f

    mul-float/2addr v7, p4

    add-int/lit8 v8, v4, 0x1

    int-to-float v8, v8

    mul-float/2addr v8, v0

    invoke-static {v8}, Lcom/badlogic/gdx/math/MathUtils;->sin(F)F

    move-result v8

    mul-float/2addr v7, v8

    add-float/2addr v7, v3

    const/4 v8, 0x0

    invoke-interface {v5, v6, v7, v8}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 920
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 932
    :cond_2
    return-void
.end method

.method public end()V
    .locals 1

    .prologue
    .line 1104
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->end()V

    .line 1105
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->shapeType:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    .line 1106
    return-void
.end method

.method public flush()V
    .locals 1

    .prologue
    .line 1109
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->shapeType:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    .line 1110
    .local v0, "type":Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->end()V

    .line 1111
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->begin(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;)V

    .line 1112
    return-void
.end method

.method public getColor()Lcom/badlogic/gdx/graphics/Color;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    return-object v0
.end method

.method public getCurrentType()Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;
    .locals 1

    .prologue
    .line 1116
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->shapeType:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    return-object v0
.end method

.method public getProjectionMatrix()Lcom/badlogic/gdx/math/Matrix4;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->projectionMatrix:Lcom/badlogic/gdx/math/Matrix4;

    return-object v0
.end method

.method public getRenderer()Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;
    .locals 1

    .prologue
    .line 1120
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    return-object v0
.end method

.method public getTransformMatrix()Lcom/badlogic/gdx/math/Matrix4;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->transformMatrix:Lcom/badlogic/gdx/math/Matrix4;

    return-object v0
.end method

.method public identity()V
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->transformMatrix:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Matrix4;->idt()Lcom/badlogic/gdx/math/Matrix4;

    .line 167
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->matrixDirty:Z

    .line 168
    return-void
.end method

.method public isDrawing()Z
    .locals 1

    .prologue
    .line 1125
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->shapeType:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final line(FFFF)V
    .locals 9
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "x2"    # F
    .param p4, "y2"    # F

    .prologue
    const/4 v3, 0x0

    .line 252
    iget-object v7, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget-object v8, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, p3

    move v5, p4

    move v6, v3

    invoke-virtual/range {v0 .. v8}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->line(FFFFFFLcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    .line 253
    return-void
.end method

.method public final line(FFFFFF)V
    .locals 9
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F
    .param p4, "x2"    # F
    .param p5, "y2"    # F
    .param p6, "z2"    # F

    .prologue
    .line 242
    iget-object v7, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget-object v8, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v8}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->line(FFFFFFLcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    .line 243
    return-void
.end method

.method public line(FFFFFFLcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F
    .param p4, "x2"    # F
    .param p5, "y2"    # F
    .param p6, "z2"    # F
    .param p7, "c1"    # Lcom/badlogic/gdx/graphics/Color;
    .param p8, "c2"    # Lcom/badlogic/gdx/graphics/Color;

    .prologue
    .line 268
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->shapeType:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    sget-object v1, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->Filled:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    if-ne v0, v1, :cond_0

    .line 269
    iget v5, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->defaultRectLineWidth:F

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p4

    move v4, p5

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->rectLine(FFFFF)V

    .line 277
    :goto_0
    return-void

    .line 272
    :cond_0
    sget-object v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->Line:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p0, v0, v1, v2}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->check(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;I)V

    .line 273
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    iget v1, p7, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v2, p7, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v3, p7, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v4, p7, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(FFFF)V

    .line 274
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 275
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    iget v1, p8, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v2, p8, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v3, p8, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v4, p8, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(FFFF)V

    .line 276
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v0, p4, p5, p6}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    goto :goto_0
.end method

.method public final line(FFFFLcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V
    .locals 9
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "x2"    # F
    .param p4, "y2"    # F
    .param p5, "c1"    # Lcom/badlogic/gdx/graphics/Color;
    .param p6, "c2"    # Lcom/badlogic/gdx/graphics/Color;

    .prologue
    const/4 v3, 0x0

    .line 262
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, p3

    move v5, p4

    move v6, v3

    move-object v7, p5

    move-object v8, p6

    invoke-virtual/range {v0 .. v8}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->line(FFFFFFLcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    .line 263
    return-void
.end method

.method public final line(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;)V
    .locals 9
    .param p1, "v0"    # Lcom/badlogic/gdx/math/Vector2;
    .param p2, "v1"    # Lcom/badlogic/gdx/math/Vector2;

    .prologue
    const/4 v3, 0x0

    .line 257
    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v2, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v4, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v5, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget-object v7, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget-object v8, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    move-object v0, p0

    move v6, v3

    invoke-virtual/range {v0 .. v8}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->line(FFFFFFLcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    .line 258
    return-void
.end method

.method public final line(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)V
    .locals 9
    .param p1, "v0"    # Lcom/badlogic/gdx/math/Vector3;
    .param p2, "v1"    # Lcom/badlogic/gdx/math/Vector3;

    .prologue
    .line 247
    iget v1, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v2, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v3, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget v4, p2, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v5, p2, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v6, p2, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget-object v7, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget-object v8, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->line(FFFFFFLcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    .line 248
    return-void
.end method

.method public point(FFF)V
    .locals 8
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .prologue
    const/high16 v2, 0x3f000000    # 0.5f

    .line 226
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->shapeType:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    sget-object v1, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->Line:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    if-ne v0, v1, :cond_0

    .line 227
    iget v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->defaultRectLineWidth:F

    mul-float v7, v0, v2

    .line 228
    .local v7, "size":F
    sub-float v1, p1, v7

    sub-float v2, p2, v7

    add-float v4, p1, v7

    add-float v5, p2, v7

    move-object v0, p0

    move v3, p3

    move v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->line(FFFFFF)V

    .line 238
    .end local v7    # "size":F
    :goto_0
    return-void

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->shapeType:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    sget-object v1, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->Filled:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    if-ne v0, v1, :cond_1

    .line 231
    iget v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->defaultRectLineWidth:F

    mul-float v7, v0, v2

    .line 232
    .restart local v7    # "size":F
    sub-float v1, p1, v7

    sub-float v2, p2, v7

    sub-float v3, p3, v7

    iget v4, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->defaultRectLineWidth:F

    iget v5, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->defaultRectLineWidth:F

    iget v6, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->defaultRectLineWidth:F

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->box(FFFFFF)V

    goto :goto_0

    .line 235
    .end local v7    # "size":F
    :cond_1
    sget-object v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->Point:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->check(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;I)V

    .line 236
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(Lcom/badlogic/gdx/graphics/Color;)V

    .line 237
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v0, p1, p2, p3}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    goto :goto_0
.end method

.method public polygon([F)V
    .locals 2
    .param p1, "vertices"    # [F

    .prologue
    .line 1043
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->polygon([FII)V

    .line 1044
    return-void
.end method

.method public polygon([FII)V
    .locals 12
    .param p1, "vertices"    # [F
    .param p2, "offset"    # I
    .param p3, "count"    # I

    .prologue
    const/4 v11, 0x0

    .line 1011
    const/4 v9, 0x6

    if-ge p3, v9, :cond_0

    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "Polygons must contain at least 3 points."

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1012
    :cond_0
    rem-int/lit8 v9, p3, 0x2

    if-eqz v9, :cond_1

    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "Polygons must have an even number of vertices."

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1014
    :cond_1
    sget-object v9, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->Line:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    const/4 v10, 0x0

    invoke-direct {p0, v9, v10, p3}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->check(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;I)V

    .line 1015
    iget-object v9, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v9}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v0

    .line 1016
    .local v0, "colorBits":F
    const/4 v9, 0x0

    aget v1, p1, v9

    .line 1017
    .local v1, "firstX":F
    const/4 v9, 0x1

    aget v2, p1, v9

    .line 1019
    .local v2, "firstY":F
    move v3, p2

    .local v3, "i":I
    add-int v4, p2, p3

    .local v4, "n":I
    :goto_0
    if-ge v3, v4, :cond_3

    .line 1020
    aget v5, p1, v3

    .line 1021
    .local v5, "x1":F
    add-int/lit8 v9, v3, 0x1

    aget v7, p1, v9

    .line 1026
    .local v7, "y1":F
    add-int/lit8 v9, v3, 0x2

    if-lt v9, p3, :cond_2

    .line 1027
    move v6, v1

    .line 1028
    .local v6, "x2":F
    move v8, v2

    .line 1034
    .local v8, "y2":F
    :goto_1
    iget-object v9, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v9, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 1035
    iget-object v9, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v9, v5, v7, v11}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 1036
    iget-object v9, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v9, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 1037
    iget-object v9, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v9, v6, v8, v11}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 1019
    add-int/lit8 v3, v3, 0x2

    goto :goto_0

    .line 1030
    .end local v6    # "x2":F
    .end local v8    # "y2":F
    :cond_2
    add-int/lit8 v9, v3, 0x2

    aget v6, p1, v9

    .line 1031
    .restart local v6    # "x2":F
    add-int/lit8 v9, v3, 0x3

    aget v8, p1, v9

    .restart local v8    # "y2":F
    goto :goto_1

    .line 1039
    .end local v5    # "x1":F
    .end local v6    # "x2":F
    .end local v7    # "y1":F
    .end local v8    # "y2":F
    :cond_3
    return-void
.end method

.method public polyline([F)V
    .locals 2
    .param p1, "vertices"    # [F

    .prologue
    .line 1072
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->polyline([FII)V

    .line 1073
    return-void
.end method

.method public polyline([FII)V
    .locals 10
    .param p1, "vertices"    # [F
    .param p2, "offset"    # I
    .param p3, "count"    # I

    .prologue
    const/4 v9, 0x0

    .line 1048
    const/4 v7, 0x4

    if-ge p3, v7, :cond_0

    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Polylines must contain at least 2 points."

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1049
    :cond_0
    rem-int/lit8 v7, p3, 0x2

    if-eqz v7, :cond_1

    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Polylines must have an even number of vertices."

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 1051
    :cond_1
    sget-object v7, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->Line:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    const/4 v8, 0x0

    invoke-direct {p0, v7, v8, p3}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->check(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;I)V

    .line 1052
    iget-object v7, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v7}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v0

    .line 1053
    .local v0, "colorBits":F
    move v1, p2

    .local v1, "i":I
    add-int v7, p2, p3

    add-int/lit8 v2, v7, -0x2

    .local v2, "n":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 1054
    aget v3, p1, v1

    .line 1055
    .local v3, "x1":F
    add-int/lit8 v7, v1, 0x1

    aget v5, p1, v7

    .line 1060
    .local v5, "y1":F
    add-int/lit8 v7, v1, 0x2

    aget v4, p1, v7

    .line 1061
    .local v4, "x2":F
    add-int/lit8 v7, v1, 0x3

    aget v6, p1, v7

    .line 1063
    .local v6, "y2":F
    iget-object v7, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v7, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 1064
    iget-object v7, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v7, v3, v5, v9}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 1065
    iget-object v7, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v7, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 1066
    iget-object v7, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v7, v4, v6, v9}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 1053
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 1068
    .end local v3    # "x1":F
    .end local v4    # "x2":F
    .end local v5    # "y1":F
    .end local v6    # "y2":F
    :cond_2
    return-void
.end method

.method public rect(FFFF)V
    .locals 5
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "width"    # F
    .param p4, "height"    # F

    .prologue
    const/4 v4, 0x0

    .line 389
    sget-object v1, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->Line:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    sget-object v2, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->Filled:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    const/16 v3, 0x8

    invoke-direct {p0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->check(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;I)V

    .line 390
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v0

    .line 391
    .local v0, "colorBits":F
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->shapeType:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    sget-object v2, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->Line:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    if-ne v1, v2, :cond_0

    .line 392
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 393
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, p1, p2, v4}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 394
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 395
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v2, p1, p3

    invoke-interface {v1, v2, p2, v4}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 397
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 398
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v2, p1, p3

    invoke-interface {v1, v2, p2, v4}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 399
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 400
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v2, p1, p3

    add-float v3, p2, p4

    invoke-interface {v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 402
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 403
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v2, p1, p3

    add-float v3, p2, p4

    invoke-interface {v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 404
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 405
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v2, p2, p4

    invoke-interface {v1, p1, v2, v4}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 407
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 408
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v2, p2, p4

    invoke-interface {v1, p1, v2, v4}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 409
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 410
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, p1, p2, v4}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 426
    :goto_0
    return-void

    .line 412
    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 413
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, p1, p2, v4}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 414
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 415
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v2, p1, p3

    invoke-interface {v1, v2, p2, v4}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 416
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 417
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v2, p1, p3

    add-float v3, p2, p4

    invoke-interface {v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 419
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 420
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v2, p1, p3

    add-float v3, p2, p4

    invoke-interface {v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 421
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 422
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v2, p2, p4

    invoke-interface {v1, p1, v2, v4}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 423
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 424
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, p1, p2, v4}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    goto :goto_0
.end method

.method public rect(FFFFFFFFF)V
    .locals 14
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "originX"    # F
    .param p4, "originY"    # F
    .param p5, "width"    # F
    .param p6, "height"    # F
    .param p7, "scaleX"    # F
    .param p8, "scaleY"    # F
    .param p9, "degrees"    # F

    .prologue
    .line 478
    iget-object v10, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget-object v11, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget-object v12, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    iget-object v13, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    move-object v0, p0

    move v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-virtual/range {v0 .. v13}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->rect(FFFFFFFFFLcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V

    .line 479
    return-void
.end method

.method public rect(FFFFFFFFFLcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V
    .locals 25
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "originX"    # F
    .param p4, "originY"    # F
    .param p5, "width"    # F
    .param p6, "height"    # F
    .param p7, "scaleX"    # F
    .param p8, "scaleY"    # F
    .param p9, "degrees"    # F
    .param p10, "col1"    # Lcom/badlogic/gdx/graphics/Color;
    .param p11, "col2"    # Lcom/badlogic/gdx/graphics/Color;
    .param p12, "col3"    # Lcom/badlogic/gdx/graphics/Color;
    .param p13, "col4"    # Lcom/badlogic/gdx/graphics/Color;

    .prologue
    .line 489
    sget-object v20, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->Line:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    sget-object v21, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->Filled:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    const/16 v22, 0x8

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->check(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;I)V

    .line 491
    invoke-static/range {p9 .. p9}, Lcom/badlogic/gdx/math/MathUtils;->cosDeg(F)F

    move-result v4

    .line 492
    .local v4, "cos":F
    invoke-static/range {p9 .. p9}, Lcom/badlogic/gdx/math/MathUtils;->sinDeg(F)F

    move-result v9

    .line 493
    .local v9, "sin":F
    move/from16 v0, p3

    neg-float v5, v0

    .line 494
    .local v5, "fx":F
    move/from16 v0, p4

    neg-float v7, v0

    .line 495
    .local v7, "fy":F
    sub-float v6, p5, p3

    .line 496
    .local v6, "fx2":F
    sub-float v8, p6, p4

    .line 498
    .local v8, "fy2":F
    const/high16 v20, 0x3f800000    # 1.0f

    cmpl-float v20, p7, v20

    if-nez v20, :cond_0

    const/high16 v20, 0x3f800000    # 1.0f

    cmpl-float v20, p8, v20

    if-eqz v20, :cond_1

    .line 499
    :cond_0
    mul-float v5, v5, p7

    .line 500
    mul-float v7, v7, p8

    .line 501
    mul-float v6, v6, p7

    .line 502
    mul-float v8, v8, p8

    .line 505
    :cond_1
    add-float v10, p1, p3

    .line 506
    .local v10, "worldOriginX":F
    add-float v11, p2, p4

    .line 508
    .local v11, "worldOriginY":F
    mul-float v20, v4, v5

    mul-float v21, v9, v7

    sub-float v20, v20, v21

    add-float v12, v20, v10

    .line 509
    .local v12, "x1":F
    mul-float v20, v9, v5

    mul-float v21, v4, v7

    add-float v20, v20, v21

    add-float v16, v20, v11

    .line 511
    .local v16, "y1":F
    mul-float v20, v4, v6

    mul-float v21, v9, v7

    sub-float v20, v20, v21

    add-float v13, v20, v10

    .line 512
    .local v13, "x2":F
    mul-float v20, v9, v6

    mul-float v21, v4, v7

    add-float v20, v20, v21

    add-float v17, v20, v11

    .line 514
    .local v17, "y2":F
    mul-float v20, v4, v6

    mul-float v21, v9, v8

    sub-float v20, v20, v21

    add-float v14, v20, v10

    .line 515
    .local v14, "x3":F
    mul-float v20, v9, v6

    mul-float v21, v4, v8

    add-float v20, v20, v21

    add-float v18, v20, v11

    .line 517
    .local v18, "y3":F
    sub-float v20, v14, v13

    add-float v15, v12, v20

    .line 518
    .local v15, "x4":F
    sub-float v20, v17, v16

    sub-float v19, v18, v20

    .line 520
    .local v19, "y4":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->shapeType:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    move-object/from16 v20, v0

    sget-object v21, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->Line:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_2

    .line 521
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    move-object/from16 v20, v0

    move-object/from16 v0, p10

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->r:F

    move/from16 v21, v0

    move-object/from16 v0, p10

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->g:F

    move/from16 v22, v0

    move-object/from16 v0, p10

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->b:F

    move/from16 v23, v0

    move-object/from16 v0, p10

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    move/from16 v24, v0

    invoke-interface/range {v20 .. v24}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(FFFF)V

    .line 522
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v16

    move/from16 v2, v21

    invoke-interface {v0, v12, v1, v2}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 523
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    move-object/from16 v20, v0

    move-object/from16 v0, p11

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->r:F

    move/from16 v21, v0

    move-object/from16 v0, p11

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->g:F

    move/from16 v22, v0

    move-object/from16 v0, p11

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->b:F

    move/from16 v23, v0

    move-object/from16 v0, p11

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    move/from16 v24, v0

    invoke-interface/range {v20 .. v24}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(FFFF)V

    .line 524
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v17

    move/from16 v2, v21

    invoke-interface {v0, v13, v1, v2}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 526
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    move-object/from16 v20, v0

    move-object/from16 v0, p11

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->r:F

    move/from16 v21, v0

    move-object/from16 v0, p11

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->g:F

    move/from16 v22, v0

    move-object/from16 v0, p11

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->b:F

    move/from16 v23, v0

    move-object/from16 v0, p11

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    move/from16 v24, v0

    invoke-interface/range {v20 .. v24}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(FFFF)V

    .line 527
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v17

    move/from16 v2, v21

    invoke-interface {v0, v13, v1, v2}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 528
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    move-object/from16 v20, v0

    move-object/from16 v0, p12

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->r:F

    move/from16 v21, v0

    move-object/from16 v0, p12

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->g:F

    move/from16 v22, v0

    move-object/from16 v0, p12

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->b:F

    move/from16 v23, v0

    move-object/from16 v0, p12

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    move/from16 v24, v0

    invoke-interface/range {v20 .. v24}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(FFFF)V

    .line 529
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v18

    move/from16 v2, v21

    invoke-interface {v0, v14, v1, v2}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 531
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    move-object/from16 v20, v0

    move-object/from16 v0, p12

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->r:F

    move/from16 v21, v0

    move-object/from16 v0, p12

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->g:F

    move/from16 v22, v0

    move-object/from16 v0, p12

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->b:F

    move/from16 v23, v0

    move-object/from16 v0, p12

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    move/from16 v24, v0

    invoke-interface/range {v20 .. v24}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(FFFF)V

    .line 532
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v18

    move/from16 v2, v21

    invoke-interface {v0, v14, v1, v2}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 533
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    move-object/from16 v20, v0

    move-object/from16 v0, p13

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->r:F

    move/from16 v21, v0

    move-object/from16 v0, p13

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->g:F

    move/from16 v22, v0

    move-object/from16 v0, p13

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->b:F

    move/from16 v23, v0

    move-object/from16 v0, p13

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    move/from16 v24, v0

    invoke-interface/range {v20 .. v24}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(FFFF)V

    .line 534
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v19

    move/from16 v2, v21

    invoke-interface {v0, v15, v1, v2}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 536
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    move-object/from16 v20, v0

    move-object/from16 v0, p13

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->r:F

    move/from16 v21, v0

    move-object/from16 v0, p13

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->g:F

    move/from16 v22, v0

    move-object/from16 v0, p13

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->b:F

    move/from16 v23, v0

    move-object/from16 v0, p13

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    move/from16 v24, v0

    invoke-interface/range {v20 .. v24}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(FFFF)V

    .line 537
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v19

    move/from16 v2, v21

    invoke-interface {v0, v15, v1, v2}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 538
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    move-object/from16 v20, v0

    move-object/from16 v0, p10

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->r:F

    move/from16 v21, v0

    move-object/from16 v0, p10

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->g:F

    move/from16 v22, v0

    move-object/from16 v0, p10

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->b:F

    move/from16 v23, v0

    move-object/from16 v0, p10

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    move/from16 v24, v0

    invoke-interface/range {v20 .. v24}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(FFFF)V

    .line 539
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v16

    move/from16 v2, v21

    invoke-interface {v0, v12, v1, v2}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 556
    :goto_0
    return-void

    .line 541
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    move-object/from16 v20, v0

    move-object/from16 v0, p10

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->r:F

    move/from16 v21, v0

    move-object/from16 v0, p10

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->g:F

    move/from16 v22, v0

    move-object/from16 v0, p10

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->b:F

    move/from16 v23, v0

    move-object/from16 v0, p10

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    move/from16 v24, v0

    invoke-interface/range {v20 .. v24}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(FFFF)V

    .line 542
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v16

    move/from16 v2, v21

    invoke-interface {v0, v12, v1, v2}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 543
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    move-object/from16 v20, v0

    move-object/from16 v0, p11

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->r:F

    move/from16 v21, v0

    move-object/from16 v0, p11

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->g:F

    move/from16 v22, v0

    move-object/from16 v0, p11

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->b:F

    move/from16 v23, v0

    move-object/from16 v0, p11

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    move/from16 v24, v0

    invoke-interface/range {v20 .. v24}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(FFFF)V

    .line 544
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v17

    move/from16 v2, v21

    invoke-interface {v0, v13, v1, v2}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 545
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    move-object/from16 v20, v0

    move-object/from16 v0, p12

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->r:F

    move/from16 v21, v0

    move-object/from16 v0, p12

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->g:F

    move/from16 v22, v0

    move-object/from16 v0, p12

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->b:F

    move/from16 v23, v0

    move-object/from16 v0, p12

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    move/from16 v24, v0

    invoke-interface/range {v20 .. v24}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(FFFF)V

    .line 546
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v18

    move/from16 v2, v21

    invoke-interface {v0, v14, v1, v2}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 548
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    move-object/from16 v20, v0

    move-object/from16 v0, p12

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->r:F

    move/from16 v21, v0

    move-object/from16 v0, p12

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->g:F

    move/from16 v22, v0

    move-object/from16 v0, p12

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->b:F

    move/from16 v23, v0

    move-object/from16 v0, p12

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    move/from16 v24, v0

    invoke-interface/range {v20 .. v24}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(FFFF)V

    .line 549
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v18

    move/from16 v2, v21

    invoke-interface {v0, v14, v1, v2}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 550
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    move-object/from16 v20, v0

    move-object/from16 v0, p13

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->r:F

    move/from16 v21, v0

    move-object/from16 v0, p13

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->g:F

    move/from16 v22, v0

    move-object/from16 v0, p13

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->b:F

    move/from16 v23, v0

    move-object/from16 v0, p13

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    move/from16 v24, v0

    invoke-interface/range {v20 .. v24}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(FFFF)V

    .line 551
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v19

    move/from16 v2, v21

    invoke-interface {v0, v15, v1, v2}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 552
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    move-object/from16 v20, v0

    move-object/from16 v0, p10

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->r:F

    move/from16 v21, v0

    move-object/from16 v0, p10

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->g:F

    move/from16 v22, v0

    move-object/from16 v0, p10

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->b:F

    move/from16 v23, v0

    move-object/from16 v0, p10

    iget v0, v0, Lcom/badlogic/gdx/graphics/Color;->a:F

    move/from16 v24, v0

    invoke-interface/range {v20 .. v24}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(FFFF)V

    .line 553
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v16

    move/from16 v2, v21

    invoke-interface {v0, v12, v1, v2}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    goto/16 :goto_0
.end method

.method public rect(FFFFLcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "width"    # F
    .param p4, "height"    # F
    .param p5, "col1"    # Lcom/badlogic/gdx/graphics/Color;
    .param p6, "col2"    # Lcom/badlogic/gdx/graphics/Color;
    .param p7, "col3"    # Lcom/badlogic/gdx/graphics/Color;
    .param p8, "col4"    # Lcom/badlogic/gdx/graphics/Color;

    .prologue
    const/4 v5, 0x0

    .line 435
    sget-object v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->Line:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    sget-object v1, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->Filled:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    const/16 v2, 0x8

    invoke-direct {p0, v0, v1, v2}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->check(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;I)V

    .line 437
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->shapeType:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    sget-object v1, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->Line:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    if-ne v0, v1, :cond_0

    .line 438
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    iget v1, p5, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v2, p5, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v3, p5, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v4, p5, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(FFFF)V

    .line 439
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v0, p1, p2, v5}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 440
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    iget v1, p6, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v2, p6, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v3, p6, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v4, p6, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(FFFF)V

    .line 441
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v1, p1, p3

    invoke-interface {v0, v1, p2, v5}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 443
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    iget v1, p6, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v2, p6, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v3, p6, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v4, p6, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(FFFF)V

    .line 444
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v1, p1, p3

    invoke-interface {v0, v1, p2, v5}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 445
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    iget v1, p7, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v2, p7, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v3, p7, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v4, p7, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(FFFF)V

    .line 446
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v1, p1, p3

    add-float v2, p2, p4

    invoke-interface {v0, v1, v2, v5}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 448
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    iget v1, p7, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v2, p7, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v3, p7, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v4, p7, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(FFFF)V

    .line 449
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v1, p1, p3

    add-float v2, p2, p4

    invoke-interface {v0, v1, v2, v5}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 450
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    iget v1, p8, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v2, p8, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v3, p8, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v4, p8, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(FFFF)V

    .line 451
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v1, p2, p4

    invoke-interface {v0, p1, v1, v5}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 453
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    iget v1, p8, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v2, p8, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v3, p8, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v4, p8, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(FFFF)V

    .line 454
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v1, p2, p4

    invoke-interface {v0, p1, v1, v5}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 455
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    iget v1, p5, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v2, p5, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v3, p5, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v4, p5, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(FFFF)V

    .line 456
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v0, p1, p2, v5}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 472
    :goto_0
    return-void

    .line 458
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    iget v1, p5, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v2, p5, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v3, p5, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v4, p5, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(FFFF)V

    .line 459
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v0, p1, p2, v5}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 460
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    iget v1, p6, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v2, p6, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v3, p6, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v4, p6, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(FFFF)V

    .line 461
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v1, p1, p3

    invoke-interface {v0, v1, p2, v5}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 462
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    iget v1, p7, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v2, p7, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v3, p7, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v4, p7, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(FFFF)V

    .line 463
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v1, p1, p3

    add-float v2, p2, p4

    invoke-interface {v0, v1, v2, v5}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 465
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    iget v1, p7, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v2, p7, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v3, p7, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v4, p7, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(FFFF)V

    .line 466
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v1, p1, p3

    add-float v2, p2, p4

    invoke-interface {v0, v1, v2, v5}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 467
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    iget v1, p8, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v2, p8, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v3, p8, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v4, p8, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(FFFF)V

    .line 468
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v1, p2, p4

    invoke-interface {v0, p1, v1, v5}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 469
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    iget v1, p5, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v2, p5, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v3, p5, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v4, p5, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(FFFF)V

    .line 470
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v0, p1, p2, v5}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    goto :goto_0
.end method

.method public rectLine(FFFFF)V
    .locals 8
    .param p1, "x1"    # F
    .param p2, "y1"    # F
    .param p3, "x2"    # F
    .param p4, "y2"    # F
    .param p5, "width"    # F

    .prologue
    const/4 v7, 0x0

    .line 560
    sget-object v4, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->Line:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    sget-object v5, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->Filled:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    const/16 v6, 0x8

    invoke-direct {p0, v4, v5, v6}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->check(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;I)V

    .line 561
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v0

    .line 562
    .local v0, "colorBits":F
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->tmp:Lcom/badlogic/gdx/math/Vector2;

    sub-float v5, p4, p2

    sub-float v6, p1, p3

    invoke-virtual {v4, v5, v6}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    move-result-object v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/math/Vector2;->nor()Lcom/badlogic/gdx/math/Vector2;

    move-result-object v1

    .line 563
    .local v1, "t":Lcom/badlogic/gdx/math/Vector2;
    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr p5, v4

    .line 564
    iget v4, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    mul-float v2, v4, p5

    .line 565
    .local v2, "tx":F
    iget v4, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float v3, v4, p5

    .line 566
    .local v3, "ty":F
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->shapeType:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    sget-object v5, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->Line:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    if-ne v4, v5, :cond_0

    .line 567
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v4, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 568
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v5, p1, v2

    add-float v6, p2, v3

    invoke-interface {v4, v5, v6, v7}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 569
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v4, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 570
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    sub-float v5, p1, v2

    sub-float v6, p2, v3

    invoke-interface {v4, v5, v6, v7}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 572
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v4, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 573
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v5, p3, v2

    add-float v6, p4, v3

    invoke-interface {v4, v5, v6, v7}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 574
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v4, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 575
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    sub-float v5, p3, v2

    sub-float v6, p4, v3

    invoke-interface {v4, v5, v6, v7}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 577
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v4, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 578
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v5, p3, v2

    add-float v6, p4, v3

    invoke-interface {v4, v5, v6, v7}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 579
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v4, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 580
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v5, p1, v2

    add-float v6, p2, v3

    invoke-interface {v4, v5, v6, v7}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 582
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v4, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 583
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    sub-float v5, p3, v2

    sub-float v6, p4, v3

    invoke-interface {v4, v5, v6, v7}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 584
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v4, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 585
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    sub-float v5, p1, v2

    sub-float v6, p2, v3

    invoke-interface {v4, v5, v6, v7}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 601
    :goto_0
    return-void

    .line 587
    :cond_0
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v4, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 588
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v5, p1, v2

    add-float v6, p2, v3

    invoke-interface {v4, v5, v6, v7}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 589
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v4, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 590
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    sub-float v5, p1, v2

    sub-float v6, p2, v3

    invoke-interface {v4, v5, v6, v7}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 591
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v4, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 592
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v5, p3, v2

    add-float v6, p4, v3

    invoke-interface {v4, v5, v6, v7}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 594
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v4, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 595
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    sub-float v5, p3, v2

    sub-float v6, p4, v3

    invoke-interface {v4, v5, v6, v7}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 596
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v4, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 597
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    add-float v5, p3, v2

    add-float v6, p4, v3

    invoke-interface {v4, v5, v6, v7}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 598
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v4, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 599
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    sub-float v5, p1, v2

    sub-float v6, p2, v3

    invoke-interface {v4, v5, v6, v7}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    goto :goto_0
.end method

.method public rectLine(Lcom/badlogic/gdx/math/Vector2;Lcom/badlogic/gdx/math/Vector2;F)V
    .locals 6
    .param p1, "p1"    # Lcom/badlogic/gdx/math/Vector2;
    .param p2, "p2"    # Lcom/badlogic/gdx/math/Vector2;
    .param p3, "width"    # F

    .prologue
    .line 605
    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v2, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    iget v3, p2, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v4, p2, Lcom/badlogic/gdx/math/Vector2;->y:F

    move-object v0, p0

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->rectLine(FFFFF)V

    .line 606
    return-void
.end method

.method public rotate(FFFF)V
    .locals 1
    .param p1, "axisX"    # F
    .param p2, "axisY"    # F
    .param p3, "axisZ"    # F
    .param p4, "degrees"    # F

    .prologue
    .line 178
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->transformMatrix:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/math/Matrix4;->rotate(FFFF)Lcom/badlogic/gdx/math/Matrix4;

    .line 179
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->matrixDirty:Z

    .line 180
    return-void
.end method

.method public scale(FFF)V
    .locals 1
    .param p1, "scaleX"    # F
    .param p2, "scaleY"    # F
    .param p3, "scaleZ"    # F

    .prologue
    .line 184
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->transformMatrix:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, p1, p2, p3}, Lcom/badlogic/gdx/math/Matrix4;->scale(FFF)Lcom/badlogic/gdx/math/Matrix4;

    .line 185
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->matrixDirty:Z

    .line 186
    return-void
.end method

.method public set(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;)V
    .locals 2
    .param p1, "type"    # Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    .prologue
    .line 217
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->shapeType:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    if-ne v0, p1, :cond_0

    .line 222
    :goto_0
    return-void

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->shapeType:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "begin must be called first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 219
    :cond_1
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->autoShapeType:Z

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "autoShapeType must be enabled."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 220
    :cond_2
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->end()V

    .line 221
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->begin(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;)V

    goto :goto_0
.end method

.method public setAutoShapeType(Z)V
    .locals 0
    .param p1, "autoShapeType"    # Z

    .prologue
    .line 192
    iput-boolean p1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->autoShapeType:Z

    .line 193
    return-void
.end method

.method public setColor(FFFF)V
    .locals 1
    .param p1, "r"    # F
    .param p2, "g"    # F
    .param p3, "b"    # F
    .param p4, "a"    # F

    .prologue
    .line 131
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/Color;->set(FFFF)Lcom/badlogic/gdx/graphics/Color;

    .line 132
    return-void
.end method

.method public setColor(Lcom/badlogic/gdx/graphics/Color;)V
    .locals 1
    .param p1, "color"    # Lcom/badlogic/gdx/graphics/Color;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    .line 127
    return-void
.end method

.method public setProjectionMatrix(Lcom/badlogic/gdx/math/Matrix4;)V
    .locals 1
    .param p1, "matrix"    # Lcom/badlogic/gdx/math/Matrix4;

    .prologue
    .line 145
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->projectionMatrix:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    .line 146
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->matrixDirty:Z

    .line 147
    return-void
.end method

.method public setTransformMatrix(Lcom/badlogic/gdx/math/Matrix4;)V
    .locals 1
    .param p1, "matrix"    # Lcom/badlogic/gdx/math/Matrix4;

    .prologue
    .line 155
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->transformMatrix:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Matrix4;->set(Lcom/badlogic/gdx/math/Matrix4;)Lcom/badlogic/gdx/math/Matrix4;

    .line 156
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->matrixDirty:Z

    .line 157
    return-void
.end method

.method public translate(FFF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .prologue
    .line 172
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->transformMatrix:Lcom/badlogic/gdx/math/Matrix4;

    invoke-virtual {v0, p1, p2, p3}, Lcom/badlogic/gdx/math/Matrix4;->translate(FFF)Lcom/badlogic/gdx/math/Matrix4;

    .line 173
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->matrixDirty:Z

    .line 174
    return-void
.end method

.method public triangle(FFFFFF)V
    .locals 5
    .param p1, "x1"    # F
    .param p2, "y1"    # F
    .param p3, "x2"    # F
    .param p4, "y2"    # F
    .param p5, "x3"    # F
    .param p6, "y3"    # F

    .prologue
    const/4 v4, 0x0

    .line 332
    sget-object v1, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->Line:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    sget-object v2, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->Filled:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    const/4 v3, 0x6

    invoke-direct {p0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->check(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;I)V

    .line 333
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v0

    .line 334
    .local v0, "colorBits":F
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->shapeType:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    sget-object v2, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->Line:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    if-ne v1, v2, :cond_0

    .line 335
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 336
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, p1, p2, v4}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 337
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 338
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, p3, p4, v4}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 340
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 341
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, p3, p4, v4}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 342
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 343
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, p5, p6, v4}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 345
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 346
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, p5, p6, v4}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 347
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 348
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, p1, p2, v4}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 357
    :goto_0
    return-void

    .line 350
    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 351
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, p1, p2, v4}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 352
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 353
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, p3, p4, v4}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 354
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, v0}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(F)V

    .line 355
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v1, p5, p6, v4}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    goto :goto_0
.end method

.method public triangle(FFFFFFLcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;Lcom/badlogic/gdx/graphics/Color;)V
    .locals 6
    .param p1, "x1"    # F
    .param p2, "y1"    # F
    .param p3, "x2"    # F
    .param p4, "y2"    # F
    .param p5, "x3"    # F
    .param p6, "y3"    # F
    .param p7, "col1"    # Lcom/badlogic/gdx/graphics/Color;
    .param p8, "col2"    # Lcom/badlogic/gdx/graphics/Color;
    .param p9, "col3"    # Lcom/badlogic/gdx/graphics/Color;

    .prologue
    const/4 v5, 0x0

    .line 361
    sget-object v0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->Line:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    sget-object v1, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->Filled:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    const/4 v2, 0x6

    invoke-direct {p0, v0, v1, v2}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->check(Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;I)V

    .line 362
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->shapeType:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    sget-object v1, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;->Line:Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer$ShapeType;

    if-ne v0, v1, :cond_0

    .line 363
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    iget v1, p7, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v2, p7, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v3, p7, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v4, p7, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(FFFF)V

    .line 364
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v0, p1, p2, v5}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 365
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    iget v1, p8, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v2, p8, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v3, p8, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v4, p8, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(FFFF)V

    .line 366
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v0, p3, p4, v5}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 368
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    iget v1, p8, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v2, p8, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v3, p8, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v4, p8, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(FFFF)V

    .line 369
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v0, p3, p4, v5}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 370
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    iget v1, p9, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v2, p9, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v3, p9, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v4, p9, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(FFFF)V

    .line 371
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v0, p5, p6, v5}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 373
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    iget v1, p9, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v2, p9, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v3, p9, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v4, p9, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(FFFF)V

    .line 374
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v0, p5, p6, v5}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 375
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    iget v1, p7, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v2, p7, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v3, p7, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v4, p7, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(FFFF)V

    .line 376
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v0, p1, p2, v5}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 385
    :goto_0
    return-void

    .line 378
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    iget v1, p7, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v2, p7, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v3, p7, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v4, p7, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(FFFF)V

    .line 379
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v0, p1, p2, v5}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 380
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    iget v1, p8, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v2, p8, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v3, p8, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v4, p8, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(FFFF)V

    .line 381
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v0, p3, p4, v5}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    .line 382
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    iget v1, p9, Lcom/badlogic/gdx/graphics/Color;->r:F

    iget v2, p9, Lcom/badlogic/gdx/graphics/Color;->g:F

    iget v3, p9, Lcom/badlogic/gdx/graphics/Color;->b:F

    iget v4, p9, Lcom/badlogic/gdx/graphics/Color;->a:F

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->color(FFFF)V

    .line 383
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->renderer:Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;

    invoke-interface {v0, p5, p6, v5}, Lcom/badlogic/gdx/graphics/glutils/ImmediateModeRenderer;->vertex(FFF)V

    goto :goto_0
.end method

.method public updateMatrices()V
    .locals 1

    .prologue
    .line 139
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->matrixDirty:Z

    .line 140
    return-void
.end method

.method public x(FFF)V
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "size"    # F

    .prologue
    .line 773
    sub-float v0, p1, p3

    sub-float v1, p2, p3

    add-float v2, p1, p3

    add-float v3, p2, p3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->line(FFFF)V

    .line 774
    sub-float v0, p1, p3

    add-float v1, p2, p3

    add-float v2, p1, p3

    sub-float v3, p2, p3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->line(FFFF)V

    .line 775
    return-void
.end method

.method public x(Lcom/badlogic/gdx/math/Vector2;F)V
    .locals 2
    .param p1, "p"    # Lcom/badlogic/gdx/math/Vector2;
    .param p2, "size"    # F

    .prologue
    .line 779
    iget v0, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    iget v1, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {p0, v0, v1, p2}, Lcom/badlogic/gdx/graphics/glutils/ShapeRenderer;->x(FFF)V

    .line 780
    return-void
.end method
