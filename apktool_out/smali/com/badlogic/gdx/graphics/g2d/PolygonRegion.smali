.class public Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;
.super Ljava/lang/Object;
.source "PolygonRegion.java"


# instance fields
.field final region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field final textureCoords:[F

.field final triangles:[S

.field final vertices:[F


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;[F[S)V
    .locals 12
    .param p1, "region"    # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .param p2, "vertices"    # [F
    .param p3, "triangles"    # [S

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 35
    iput-object p2, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;->vertices:[F

    .line 36
    iput-object p3, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;->triangles:[S

    .line 38
    array-length v9, p2

    new-array v3, v9, [F

    iput-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;->textureCoords:[F

    .line 39
    .local v3, "textureCoords":[F
    iget v4, p1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u:F

    .local v4, "u":F
    iget v7, p1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v:F

    .line 40
    .local v7, "v":F
    iget v9, p1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u2:F

    sub-float v6, v9, v4

    .line 41
    .local v6, "uvWidth":F
    iget v9, p1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v2:F

    sub-float v5, v9, v7

    .line 42
    .local v5, "uvHeight":F
    iget v8, p1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->regionWidth:I

    .line 43
    .local v8, "width":I
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->regionHeight:I

    .line 44
    .local v0, "height":I
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v2, p2

    .local v2, "n":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 45
    aget v9, p2, v1

    int-to-float v10, v8

    div-float/2addr v9, v10

    mul-float/2addr v9, v6

    add-float/2addr v9, v4

    aput v9, v3, v1

    .line 46
    add-int/lit8 v1, v1, 0x1

    .line 47
    const/high16 v9, 0x3f800000    # 1.0f

    aget v10, p2, v1

    int-to-float v11, v0

    div-float/2addr v10, v11

    sub-float/2addr v9, v10

    mul-float/2addr v9, v5

    add-float/2addr v9, v7

    aput v9, v3, v1

    .line 44
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 49
    :cond_0
    return-void
.end method


# virtual methods
.method public getRegion()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;->region:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    return-object v0
.end method

.method public getTextureCoords()[F
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;->textureCoords:[F

    return-object v0
.end method

.method public getTriangles()[S
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;->triangles:[S

    return-object v0
.end method

.method public getVertices()[F
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/PolygonRegion;->vertices:[F

    return-object v0
.end method
