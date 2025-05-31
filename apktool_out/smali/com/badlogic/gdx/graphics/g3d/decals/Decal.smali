.class public Lcom/badlogic/gdx/graphics/g3d/decals/Decal;
.super Ljava/lang/Object;
.source "Decal.java"


# static fields
.field public static final C1:I = 0x3

.field public static final C2:I = 0x9

.field public static final C3:I = 0xf

.field public static final C4:I = 0x15

.field public static final SIZE:I = 0x18

.field public static final U1:I = 0x4

.field public static final U2:I = 0xa

.field public static final U3:I = 0x10

.field public static final U4:I = 0x16

.field public static final V1:I = 0x5

.field public static final V2:I = 0xb

.field public static final V3:I = 0x11

.field public static final V4:I = 0x17

.field private static final VERTEX_SIZE:I = 0x6

.field public static final X1:I = 0x0

.field public static final X2:I = 0x6

.field public static final X3:I = 0xc

.field public static final X4:I = 0x12

.field public static final Y1:I = 0x1

.field public static final Y2:I = 0x7

.field public static final Y3:I = 0xd

.field public static final Y4:I = 0x13

.field public static final Z1:I = 0x2

.field public static final Z2:I = 0x8

.field public static final Z3:I = 0xe

.field public static final Z4:I = 0x14

.field static final dir:Lcom/badlogic/gdx/math/Vector3;

.field protected static rotator:Lcom/badlogic/gdx/math/Quaternion;

.field private static tmp:Lcom/badlogic/gdx/math/Vector3;

.field private static tmp2:Lcom/badlogic/gdx/math/Vector3;


# instance fields
.field protected color:Lcom/badlogic/gdx/graphics/Color;

.field protected dimensions:Lcom/badlogic/gdx/math/Vector2;

.field protected material:Lcom/badlogic/gdx/graphics/g3d/decals/DecalMaterial;

.field protected position:Lcom/badlogic/gdx/math/Vector3;

.field protected rotation:Lcom/badlogic/gdx/math/Quaternion;

.field protected scale:Lcom/badlogic/gdx/math/Vector2;

.field public transformationOffset:Lcom/badlogic/gdx/math/Vector2;

.field protected updated:Z

.field public value:I

.field protected vertices:[F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 41
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->tmp:Lcom/badlogic/gdx/math/Vector3;

    .line 42
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->tmp2:Lcom/badlogic/gdx/math/Vector3;

    .line 565
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->dir:Lcom/badlogic/gdx/math/Vector3;

    .line 601
    new-instance v0, Lcom/badlogic/gdx/math/Quaternion;

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/badlogic/gdx/math/Quaternion;-><init>(FFFF)V

    sput-object v0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotator:Lcom/badlogic/gdx/math/Quaternion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/16 v0, 0x18

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    .line 48
    new-instance v0, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->position:Lcom/badlogic/gdx/math/Vector3;

    .line 49
    new-instance v0, Lcom/badlogic/gdx/math/Quaternion;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Quaternion;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    .line 50
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0, v1, v1}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->scale:Lcom/badlogic/gdx/math/Vector2;

    .line 51
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/Color;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->color:Lcom/badlogic/gdx/graphics/Color;

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->transformationOffset:Lcom/badlogic/gdx/math/Vector2;

    .line 56
    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->dimensions:Lcom/badlogic/gdx/math/Vector2;

    .line 58
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/decals/DecalMaterial;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/decals/DecalMaterial;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->material:Lcom/badlogic/gdx/graphics/g3d/decals/DecalMaterial;

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->updated:Z

    .line 62
    return-void
.end method

.method public static newDecal(FFLcom/badlogic/gdx/graphics/g2d/TextureRegion;)Lcom/badlogic/gdx/graphics/g3d/decals/Decal;
    .locals 1
    .param p0, "width"    # F
    .param p1, "height"    # F
    .param p2, "textureRegion"    # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .prologue
    const/4 v0, -0x1

    .line 632
    invoke-static {p0, p1, p2, v0, v0}, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->newDecal(FFLcom/badlogic/gdx/graphics/g2d/TextureRegion;II)Lcom/badlogic/gdx/graphics/g3d/decals/Decal;

    move-result-object v0

    return-object v0
.end method

.method public static newDecal(FFLcom/badlogic/gdx/graphics/g2d/TextureRegion;II)Lcom/badlogic/gdx/graphics/g3d/decals/Decal;
    .locals 3
    .param p0, "width"    # F
    .param p1, "height"    # F
    .param p2, "textureRegion"    # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .param p3, "srcBlendFactor"    # I
    .param p4, "dstBlendFactor"    # I

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 656
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;-><init>()V

    .line 657
    .local v0, "decal":Lcom/badlogic/gdx/graphics/g3d/decals/Decal;
    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->setTextureRegion(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 658
    invoke-virtual {v0, p3, p4}, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->setBlending(II)V

    .line 659
    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->dimensions:Lcom/badlogic/gdx/math/Vector2;

    iput p0, v1, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 660
    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->dimensions:Lcom/badlogic/gdx/math/Vector2;

    iput p1, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 661
    invoke-virtual {v0, v2, v2, v2, v2}, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->setColor(FFFF)V

    .line 662
    return-object v0
.end method

.method public static newDecal(FFLcom/badlogic/gdx/graphics/g2d/TextureRegion;Z)Lcom/badlogic/gdx/graphics/g3d/decals/Decal;
    .locals 2
    .param p0, "width"    # F
    .param p1, "height"    # F
    .param p2, "textureRegion"    # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .param p3, "hasTransparency"    # Z

    .prologue
    const/4 v0, -0x1

    .line 643
    if-eqz p3, :cond_1

    const/16 v1, 0x302

    :goto_0
    if-eqz p3, :cond_0

    const/16 v0, 0x303

    :cond_0
    invoke-static {p0, p1, p2, v1, v0}, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->newDecal(FFLcom/badlogic/gdx/graphics/g2d/TextureRegion;II)Lcom/badlogic/gdx/graphics/g3d/decals/Decal;

    move-result-object v0

    return-object v0

    :cond_1
    move v1, v0

    goto :goto_0
.end method

.method public static newDecal(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)Lcom/badlogic/gdx/graphics/g3d/decals/Decal;
    .locals 3
    .param p0, "textureRegion"    # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .prologue
    const/4 v2, -0x1

    .line 608
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0, v1, p0, v2, v2}, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->newDecal(FFLcom/badlogic/gdx/graphics/g2d/TextureRegion;II)Lcom/badlogic/gdx/graphics/g3d/decals/Decal;

    move-result-object v0

    return-object v0
.end method

.method public static newDecal(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;Z)Lcom/badlogic/gdx/graphics/g3d/decals/Decal;
    .locals 4
    .param p0, "textureRegion"    # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .param p1, "hasTransparency"    # Z

    .prologue
    const/4 v0, -0x1

    .line 618
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v1

    int-to-float v2, v1

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v1

    int-to-float v3, v1

    if-eqz p1, :cond_1

    const/16 v1, 0x302

    :goto_0
    if-eqz p1, :cond_0

    const/16 v0, 0x303

    :cond_0
    invoke-static {v2, v3, p0, v1, v0}, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->newDecal(FFLcom/badlogic/gdx/graphics/g2d/TextureRegion;II)Lcom/badlogic/gdx/graphics/g3d/decals/Decal;

    move-result-object v0

    return-object v0

    :cond_1
    move v1, v0

    goto :goto_0
.end method


# virtual methods
.method public getColor()Lcom/badlogic/gdx/graphics/Color;
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->color:Lcom/badlogic/gdx/graphics/Color;

    return-object v0
.end method

.method public getHeight()F
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->dimensions:Lcom/badlogic/gdx/math/Vector2;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    return v0
.end method

.method public getMaterial()Lcom/badlogic/gdx/graphics/g3d/decals/DecalMaterial;
    .locals 1

    .prologue
    .line 562
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->material:Lcom/badlogic/gdx/graphics/g3d/decals/DecalMaterial;

    return-object v0
.end method

.method public getPosition()Lcom/badlogic/gdx/math/Vector3;
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->position:Lcom/badlogic/gdx/math/Vector3;

    return-object v0
.end method

.method public getRotation()Lcom/badlogic/gdx/math/Quaternion;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    return-object v0
.end method

.method public getScaleX()F
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->scale:Lcom/badlogic/gdx/math/Vector2;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    return v0
.end method

.method public getScaleY()F
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->scale:Lcom/badlogic/gdx/math/Vector2;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    return v0
.end method

.method public getTextureRegion()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .locals 1

    .prologue
    .line 549
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->material:Lcom/badlogic/gdx/graphics/g3d/decals/DecalMaterial;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/decals/DecalMaterial;->textureRegion:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    return-object v0
.end method

.method public getVertices()[F
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    return-object v0
.end method

.method public getWidth()F
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->dimensions:Lcom/badlogic/gdx/math/Vector2;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    return v0
.end method

.method public getX()F
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->position:Lcom/badlogic/gdx/math/Vector3;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->x:F

    return v0
.end method

.method public getY()F
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->position:Lcom/badlogic/gdx/math/Vector3;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->y:F

    return v0
.end method

.method public getZ()F
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->position:Lcom/badlogic/gdx/math/Vector3;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector3;->z:F

    return v0
.end method

.method public lookAt(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)V
    .locals 2
    .param p1, "position"    # Lcom/badlogic/gdx/math/Vector3;
    .param p2, "up"    # Lcom/badlogic/gdx/math/Vector3;

    .prologue
    .line 571
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->dir:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->position:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->sub(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    .line 572
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->dir:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {p0, v0, p2}, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->setRotation(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)V

    .line 573
    return-void
.end method

.method protected resetVertices()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/high16 v5, 0x40000000    # 2.0f

    const/4 v6, 0x0

    .line 497
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->dimensions:Lcom/badlogic/gdx/math/Vector2;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector2;->x:F

    neg-float v4, v4

    div-float v1, v4, v5

    .line 498
    .local v1, "left":F
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->dimensions:Lcom/badlogic/gdx/math/Vector2;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector2;->x:F

    add-float v2, v1, v4

    .line 499
    .local v2, "right":F
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->dimensions:Lcom/badlogic/gdx/math/Vector2;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector2;->y:F

    div-float v3, v4, v5

    .line 500
    .local v3, "top":F
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->dimensions:Lcom/badlogic/gdx/math/Vector2;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector2;->y:F

    sub-float v0, v3, v4

    .line 503
    .local v0, "bottom":F
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    aput v1, v4, v7

    .line 504
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    const/4 v5, 0x1

    aput v3, v4, v5

    .line 505
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    const/4 v5, 0x2

    aput v6, v4, v5

    .line 507
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    const/4 v5, 0x6

    aput v2, v4, v5

    .line 508
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    const/4 v5, 0x7

    aput v3, v4, v5

    .line 509
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    const/16 v5, 0x8

    aput v6, v4, v5

    .line 511
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    const/16 v5, 0xc

    aput v1, v4, v5

    .line 512
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    const/16 v5, 0xd

    aput v0, v4, v5

    .line 513
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    const/16 v5, 0xe

    aput v6, v4, v5

    .line 515
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    const/16 v5, 0x12

    aput v2, v4, v5

    .line 516
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    const/16 v5, 0x13

    aput v0, v4, v5

    .line 517
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    const/16 v5, 0x14

    aput v6, v4, v5

    .line 519
    iput-boolean v7, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->updated:Z

    .line 520
    return-void
.end method

.method public rotateX(F)V
    .locals 2
    .param p1, "angle"    # F

    .prologue
    .line 127
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotator:Lcom/badlogic/gdx/math/Quaternion;

    sget-object v1, Lcom/badlogic/gdx/math/Vector3;->X:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1, p1}, Lcom/badlogic/gdx/math/Quaternion;->set(Lcom/badlogic/gdx/math/Vector3;F)Lcom/badlogic/gdx/math/Quaternion;

    .line 128
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotator:Lcom/badlogic/gdx/math/Quaternion;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Quaternion;->mul(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Quaternion;

    .line 129
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->updated:Z

    .line 130
    return-void
.end method

.method public rotateY(F)V
    .locals 2
    .param p1, "angle"    # F

    .prologue
    .line 136
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotator:Lcom/badlogic/gdx/math/Quaternion;

    sget-object v1, Lcom/badlogic/gdx/math/Vector3;->Y:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1, p1}, Lcom/badlogic/gdx/math/Quaternion;->set(Lcom/badlogic/gdx/math/Vector3;F)Lcom/badlogic/gdx/math/Quaternion;

    .line 137
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotator:Lcom/badlogic/gdx/math/Quaternion;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Quaternion;->mul(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Quaternion;

    .line 138
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->updated:Z

    .line 139
    return-void
.end method

.method public rotateZ(F)V
    .locals 2
    .param p1, "angle"    # F

    .prologue
    .line 145
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotator:Lcom/badlogic/gdx/math/Quaternion;

    sget-object v1, Lcom/badlogic/gdx/math/Vector3;->Z:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1, p1}, Lcom/badlogic/gdx/math/Quaternion;->set(Lcom/badlogic/gdx/math/Vector3;F)Lcom/badlogic/gdx/math/Quaternion;

    .line 146
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotator:Lcom/badlogic/gdx/math/Quaternion;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Quaternion;->mul(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Quaternion;

    .line 147
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->updated:Z

    .line 148
    return-void
.end method

.method public setBlending(II)V
    .locals 1
    .param p1, "srcBlendFactor"    # I
    .param p2, "dstBlendFactor"    # I

    .prologue
    .line 557
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->material:Lcom/badlogic/gdx/graphics/g3d/decals/DecalMaterial;

    iput p1, v0, Lcom/badlogic/gdx/graphics/g3d/decals/DecalMaterial;->srcBlendFactor:I

    .line 558
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->material:Lcom/badlogic/gdx/graphics/g3d/decals/DecalMaterial;

    iput p2, v0, Lcom/badlogic/gdx/graphics/g3d/decals/DecalMaterial;->dstBlendFactor:I

    .line 559
    return-void
.end method

.method public setColor(F)V
    .locals 2
    .param p1, "color"    # F

    .prologue
    .line 92
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-static {p1}, Lcom/badlogic/gdx/utils/NumberUtils;->floatToIntColor(F)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/Color;->set(I)Lcom/badlogic/gdx/graphics/Color;

    .line 93
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    const/4 v1, 0x3

    aput p1, v0, v1

    .line 94
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    const/16 v1, 0x9

    aput p1, v0, v1

    .line 95
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    const/16 v1, 0xf

    aput p1, v0, v1

    .line 96
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    const/16 v1, 0x15

    aput p1, v0, v1

    .line 97
    return-void
.end method

.method public setColor(FFFF)V
    .locals 5
    .param p1, "r"    # F
    .param p2, "g"    # F
    .param p3, "b"    # F
    .param p4, "a"    # F

    .prologue
    const/high16 v4, 0x437f0000    # 255.0f

    .line 71
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/Color;->set(FFFF)Lcom/badlogic/gdx/graphics/Color;

    .line 72
    mul-float v2, v4, p4

    float-to-int v2, v2

    shl-int/lit8 v2, v2, 0x18

    mul-float v3, v4, p3

    float-to-int v3, v3

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    mul-float v3, v4, p2

    float-to-int v3, v3

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    mul-float v3, v4, p1

    float-to-int v3, v3

    or-int v1, v2, v3

    .line 73
    .local v1, "intBits":I
    invoke-static {v1}, Lcom/badlogic/gdx/utils/NumberUtils;->intToFloatColor(I)F

    move-result v0

    .line 74
    .local v0, "color":F
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    const/4 v3, 0x3

    aput v0, v2, v3

    .line 75
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    const/16 v3, 0x9

    aput v0, v2, v3

    .line 76
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    const/16 v3, 0xf

    aput v0, v2, v3

    .line 77
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    const/16 v3, 0x15

    aput v0, v2, v3

    .line 78
    return-void
.end method

.method public setColor(Lcom/badlogic/gdx/graphics/Color;)V
    .locals 3
    .param p1, "tint"    # Lcom/badlogic/gdx/graphics/Color;

    .prologue
    .line 82
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    .line 83
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v0

    .line 84
    .local v0, "color":F
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    const/4 v2, 0x3

    aput v0, v1, v2

    .line 85
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    const/16 v2, 0x9

    aput v0, v1, v2

    .line 86
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    const/16 v2, 0xf

    aput v0, v1, v2

    .line 87
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    const/16 v2, 0x15

    aput v0, v1, v2

    .line 88
    return-void
.end method

.method public setDimensions(FF)V
    .locals 1
    .param p1, "width"    # F
    .param p2, "height"    # F

    .prologue
    .line 366
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->dimensions:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    .line 367
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->updated:Z

    .line 368
    return-void
.end method

.method public setHeight(F)V
    .locals 1
    .param p1, "height"    # F

    .prologue
    .line 352
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->dimensions:Lcom/badlogic/gdx/math/Vector2;

    iput p1, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 353
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->updated:Z

    .line 354
    return-void
.end method

.method public setPosition(FFF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .prologue
    .line 268
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->position:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, p1, p2, p3}, Lcom/badlogic/gdx/math/Vector3;->set(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 269
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->updated:Z

    .line 270
    return-void
.end method

.method public setPosition(Lcom/badlogic/gdx/math/Vector3;)V
    .locals 1
    .param p1, "pos"    # Lcom/badlogic/gdx/math/Vector3;

    .prologue
    .line 274
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->position:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 275
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->updated:Z

    .line 276
    return-void
.end method

.method public setRotation(FFF)V
    .locals 1
    .param p1, "yaw"    # F
    .param p2, "pitch"    # F
    .param p3, "roll"    # F

    .prologue
    .line 155
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    invoke-virtual {v0, p1, p2, p3}, Lcom/badlogic/gdx/math/Quaternion;->setEulerAngles(FFF)Lcom/badlogic/gdx/math/Quaternion;

    .line 156
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->updated:Z

    .line 157
    return-void
.end method

.method public setRotation(Lcom/badlogic/gdx/math/Quaternion;)V
    .locals 1
    .param p1, "q"    # Lcom/badlogic/gdx/math/Quaternion;

    .prologue
    .line 172
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Quaternion;->set(Lcom/badlogic/gdx/math/Quaternion;)Lcom/badlogic/gdx/math/Quaternion;

    .line 173
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->updated:Z

    .line 174
    return-void
.end method

.method public setRotation(Lcom/badlogic/gdx/math/Vector3;Lcom/badlogic/gdx/math/Vector3;)V
    .locals 10
    .param p1, "dir"    # Lcom/badlogic/gdx/math/Vector3;
    .param p2, "up"    # Lcom/badlogic/gdx/math/Vector3;

    .prologue
    .line 163
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->tmp:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Vector3;->crs(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    .line 164
    sget-object v0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->tmp2:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Vector3;->set(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->tmp:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/math/Vector3;->crs(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/math/Vector3;->nor()Lcom/badlogic/gdx/math/Vector3;

    .line 165
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    sget-object v1, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->tmp:Lcom/badlogic/gdx/math/Vector3;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector3;->x:F

    sget-object v2, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->tmp2:Lcom/badlogic/gdx/math/Vector3;

    iget v2, v2, Lcom/badlogic/gdx/math/Vector3;->x:F

    iget v3, p1, Lcom/badlogic/gdx/math/Vector3;->x:F

    sget-object v4, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->tmp:Lcom/badlogic/gdx/math/Vector3;

    iget v4, v4, Lcom/badlogic/gdx/math/Vector3;->y:F

    sget-object v5, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->tmp2:Lcom/badlogic/gdx/math/Vector3;

    iget v5, v5, Lcom/badlogic/gdx/math/Vector3;->y:F

    iget v6, p1, Lcom/badlogic/gdx/math/Vector3;->y:F

    sget-object v7, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->tmp:Lcom/badlogic/gdx/math/Vector3;

    iget v7, v7, Lcom/badlogic/gdx/math/Vector3;->z:F

    sget-object v8, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->tmp2:Lcom/badlogic/gdx/math/Vector3;

    iget v8, v8, Lcom/badlogic/gdx/math/Vector3;->z:F

    iget v9, p1, Lcom/badlogic/gdx/math/Vector3;->z:F

    invoke-virtual/range {v0 .. v9}, Lcom/badlogic/gdx/math/Quaternion;->setFromAxes(FFFFFFFFF)Lcom/badlogic/gdx/math/Quaternion;

    .line 166
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->updated:Z

    .line 167
    return-void
.end method

.method public setRotationX(F)V
    .locals 2
    .param p1, "angle"    # F

    .prologue
    .line 103
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    sget-object v1, Lcom/badlogic/gdx/math/Vector3;->X:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1, p1}, Lcom/badlogic/gdx/math/Quaternion;->set(Lcom/badlogic/gdx/math/Vector3;F)Lcom/badlogic/gdx/math/Quaternion;

    .line 104
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->updated:Z

    .line 105
    return-void
.end method

.method public setRotationY(F)V
    .locals 2
    .param p1, "angle"    # F

    .prologue
    .line 111
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    sget-object v1, Lcom/badlogic/gdx/math/Vector3;->Y:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1, p1}, Lcom/badlogic/gdx/math/Quaternion;->set(Lcom/badlogic/gdx/math/Vector3;F)Lcom/badlogic/gdx/math/Quaternion;

    .line 112
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->updated:Z

    .line 113
    return-void
.end method

.method public setRotationZ(F)V
    .locals 2
    .param p1, "angle"    # F

    .prologue
    .line 119
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    sget-object v1, Lcom/badlogic/gdx/math/Vector3;->Z:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, v1, p1}, Lcom/badlogic/gdx/math/Quaternion;->set(Lcom/badlogic/gdx/math/Vector3;F)Lcom/badlogic/gdx/math/Quaternion;

    .line 120
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->updated:Z

    .line 121
    return-void
.end method

.method public setScale(F)V
    .locals 1
    .param p1, "scale"    # F

    .prologue
    .line 331
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->scale:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0, p1, p1}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    .line 332
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->updated:Z

    .line 333
    return-void
.end method

.method public setScale(FF)V
    .locals 1
    .param p1, "scaleX"    # F
    .param p2, "scaleY"    # F

    .prologue
    .line 323
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->scale:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v0, p1, p2}, Lcom/badlogic/gdx/math/Vector2;->set(FF)Lcom/badlogic/gdx/math/Vector2;

    .line 324
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->updated:Z

    .line 325
    return-void
.end method

.method public setScaleX(F)V
    .locals 1
    .param p1, "scale"    # F

    .prologue
    .line 296
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->scale:Lcom/badlogic/gdx/math/Vector2;

    iput p1, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 297
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->updated:Z

    .line 298
    return-void
.end method

.method public setScaleY(F)V
    .locals 1
    .param p1, "scale"    # F

    .prologue
    .line 309
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->scale:Lcom/badlogic/gdx/math/Vector2;

    iput p1, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    .line 310
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->updated:Z

    .line 311
    return-void
.end method

.method public setTextureRegion(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V
    .locals 1
    .param p1, "textureRegion"    # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .prologue
    .line 543
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->material:Lcom/badlogic/gdx/graphics/g3d/decals/DecalMaterial;

    iput-object p1, v0, Lcom/badlogic/gdx/graphics/g3d/decals/DecalMaterial;->textureRegion:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 544
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->updateUVs()V

    .line 545
    return-void
.end method

.method public setWidth(F)V
    .locals 1
    .param p1, "width"    # F

    .prologue
    .line 339
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->dimensions:Lcom/badlogic/gdx/math/Vector2;

    iput p1, v0, Lcom/badlogic/gdx/math/Vector2;->x:F

    .line 340
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->updated:Z

    .line 341
    return-void
.end method

.method public setX(F)V
    .locals 1
    .param p1, "x"    # F

    .prologue
    .line 195
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->position:Lcom/badlogic/gdx/math/Vector3;

    iput p1, v0, Lcom/badlogic/gdx/math/Vector3;->x:F

    .line 196
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->updated:Z

    .line 197
    return-void
.end method

.method public setY(F)V
    .locals 1
    .param p1, "y"    # F

    .prologue
    .line 216
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->position:Lcom/badlogic/gdx/math/Vector3;

    iput p1, v0, Lcom/badlogic/gdx/math/Vector3;->y:F

    .line 217
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->updated:Z

    .line 218
    return-void
.end method

.method public setZ(F)V
    .locals 1
    .param p1, "z"    # F

    .prologue
    .line 237
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->position:Lcom/badlogic/gdx/math/Vector3;

    iput p1, v0, Lcom/badlogic/gdx/math/Vector3;->z:F

    .line 238
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->updated:Z

    .line 239
    return-void
.end method

.method protected transformVertices()V
    .locals 14

    .prologue
    const/4 v13, 0x7

    const/4 v12, 0x6

    const/4 v11, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 398
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->transformationOffset:Lcom/badlogic/gdx/math/Vector2;

    if-eqz v6, :cond_0

    .line 399
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->transformationOffset:Lcom/badlogic/gdx/math/Vector2;

    iget v6, v6, Lcom/badlogic/gdx/math/Vector2;->x:F

    neg-float v0, v6

    .line 400
    .local v0, "tx":F
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->transformationOffset:Lcom/badlogic/gdx/math/Vector2;

    iget v6, v6, Lcom/badlogic/gdx/math/Vector2;->y:F

    neg-float v1, v6

    .line 406
    .local v1, "ty":F
    :goto_0
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    aget v6, v6, v9

    add-float/2addr v6, v0

    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->scale:Lcom/badlogic/gdx/math/Vector2;

    iget v7, v7, Lcom/badlogic/gdx/math/Vector2;->x:F

    mul-float v3, v6, v7

    .line 407
    .local v3, "x":F
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    aget v6, v6, v10

    add-float/2addr v6, v1

    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->scale:Lcom/badlogic/gdx/math/Vector2;

    iget v7, v7, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float v4, v6, v7

    .line 408
    .local v4, "y":F
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    aget v5, v6, v11

    .line 410
    .local v5, "z":F
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v7, v7, Lcom/badlogic/gdx/math/Quaternion;->w:F

    mul-float/2addr v7, v3

    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v8, v8, Lcom/badlogic/gdx/math/Quaternion;->y:F

    mul-float/2addr v8, v5

    add-float/2addr v7, v8

    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v8, v8, Lcom/badlogic/gdx/math/Quaternion;->z:F

    mul-float/2addr v8, v4

    sub-float/2addr v7, v8

    aput v7, v6, v9

    .line 411
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v7, v7, Lcom/badlogic/gdx/math/Quaternion;->w:F

    mul-float/2addr v7, v4

    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v8, v8, Lcom/badlogic/gdx/math/Quaternion;->z:F

    mul-float/2addr v8, v3

    add-float/2addr v7, v8

    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v8, v8, Lcom/badlogic/gdx/math/Quaternion;->x:F

    mul-float/2addr v8, v5

    sub-float/2addr v7, v8

    aput v7, v6, v10

    .line 412
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v7, v7, Lcom/badlogic/gdx/math/Quaternion;->w:F

    mul-float/2addr v7, v5

    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v8, v8, Lcom/badlogic/gdx/math/Quaternion;->x:F

    mul-float/2addr v8, v4

    add-float/2addr v7, v8

    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v8, v8, Lcom/badlogic/gdx/math/Quaternion;->y:F

    mul-float/2addr v8, v3

    sub-float/2addr v7, v8

    aput v7, v6, v11

    .line 413
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v6, v6, Lcom/badlogic/gdx/math/Quaternion;->x:F

    neg-float v6, v6

    mul-float/2addr v6, v3

    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v7, v7, Lcom/badlogic/gdx/math/Quaternion;->y:F

    mul-float/2addr v7, v4

    sub-float/2addr v6, v7

    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v7, v7, Lcom/badlogic/gdx/math/Quaternion;->z:F

    mul-float/2addr v7, v5

    sub-float v2, v6, v7

    .line 414
    .local v2, "w":F
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    invoke-virtual {v6}, Lcom/badlogic/gdx/math/Quaternion;->conjugate()Lcom/badlogic/gdx/math/Quaternion;

    .line 415
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    aget v3, v6, v9

    .line 416
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    aget v4, v6, v10

    .line 417
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    aget v5, v6, v11

    .line 418
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v7, v7, Lcom/badlogic/gdx/math/Quaternion;->x:F

    mul-float/2addr v7, v2

    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v8, v8, Lcom/badlogic/gdx/math/Quaternion;->w:F

    mul-float/2addr v8, v3

    add-float/2addr v7, v8

    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v8, v8, Lcom/badlogic/gdx/math/Quaternion;->z:F

    mul-float/2addr v8, v4

    add-float/2addr v7, v8

    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v8, v8, Lcom/badlogic/gdx/math/Quaternion;->y:F

    mul-float/2addr v8, v5

    sub-float/2addr v7, v8

    aput v7, v6, v9

    .line 419
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v7, v7, Lcom/badlogic/gdx/math/Quaternion;->y:F

    mul-float/2addr v7, v2

    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v8, v8, Lcom/badlogic/gdx/math/Quaternion;->w:F

    mul-float/2addr v8, v4

    add-float/2addr v7, v8

    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v8, v8, Lcom/badlogic/gdx/math/Quaternion;->x:F

    mul-float/2addr v8, v5

    add-float/2addr v7, v8

    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v8, v8, Lcom/badlogic/gdx/math/Quaternion;->z:F

    mul-float/2addr v8, v3

    sub-float/2addr v7, v8

    aput v7, v6, v10

    .line 420
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v7, v7, Lcom/badlogic/gdx/math/Quaternion;->z:F

    mul-float/2addr v7, v2

    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v8, v8, Lcom/badlogic/gdx/math/Quaternion;->w:F

    mul-float/2addr v8, v5

    add-float/2addr v7, v8

    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v8, v8, Lcom/badlogic/gdx/math/Quaternion;->y:F

    mul-float/2addr v8, v3

    add-float/2addr v7, v8

    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v8, v8, Lcom/badlogic/gdx/math/Quaternion;->x:F

    mul-float/2addr v8, v4

    sub-float/2addr v7, v8

    aput v7, v6, v11

    .line 421
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    invoke-virtual {v6}, Lcom/badlogic/gdx/math/Quaternion;->conjugate()Lcom/badlogic/gdx/math/Quaternion;

    .line 423
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    aget v7, v6, v9

    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->position:Lcom/badlogic/gdx/math/Vector3;

    iget v8, v8, Lcom/badlogic/gdx/math/Vector3;->x:F

    sub-float/2addr v8, v0

    add-float/2addr v7, v8

    aput v7, v6, v9

    .line 424
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    aget v7, v6, v10

    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->position:Lcom/badlogic/gdx/math/Vector3;

    iget v8, v8, Lcom/badlogic/gdx/math/Vector3;->y:F

    sub-float/2addr v8, v1

    add-float/2addr v7, v8

    aput v7, v6, v10

    .line 425
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    aget v7, v6, v11

    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->position:Lcom/badlogic/gdx/math/Vector3;

    iget v8, v8, Lcom/badlogic/gdx/math/Vector3;->z:F

    add-float/2addr v7, v8

    aput v7, v6, v11

    .line 428
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    aget v6, v6, v12

    add-float/2addr v6, v0

    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->scale:Lcom/badlogic/gdx/math/Vector2;

    iget v7, v7, Lcom/badlogic/gdx/math/Vector2;->x:F

    mul-float v3, v6, v7

    .line 429
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    aget v6, v6, v13

    add-float/2addr v6, v1

    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->scale:Lcom/badlogic/gdx/math/Vector2;

    iget v7, v7, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float v4, v6, v7

    .line 430
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    const/16 v7, 0x8

    aget v5, v6, v7

    .line 432
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v7, v7, Lcom/badlogic/gdx/math/Quaternion;->w:F

    mul-float/2addr v7, v3

    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v8, v8, Lcom/badlogic/gdx/math/Quaternion;->y:F

    mul-float/2addr v8, v5

    add-float/2addr v7, v8

    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v8, v8, Lcom/badlogic/gdx/math/Quaternion;->z:F

    mul-float/2addr v8, v4

    sub-float/2addr v7, v8

    aput v7, v6, v12

    .line 433
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v7, v7, Lcom/badlogic/gdx/math/Quaternion;->w:F

    mul-float/2addr v7, v4

    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v8, v8, Lcom/badlogic/gdx/math/Quaternion;->z:F

    mul-float/2addr v8, v3

    add-float/2addr v7, v8

    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v8, v8, Lcom/badlogic/gdx/math/Quaternion;->x:F

    mul-float/2addr v8, v5

    sub-float/2addr v7, v8

    aput v7, v6, v13

    .line 434
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    const/16 v7, 0x8

    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v8, v8, Lcom/badlogic/gdx/math/Quaternion;->w:F

    mul-float/2addr v8, v5

    iget-object v9, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v9, v9, Lcom/badlogic/gdx/math/Quaternion;->x:F

    mul-float/2addr v9, v4

    add-float/2addr v8, v9

    iget-object v9, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v9, v9, Lcom/badlogic/gdx/math/Quaternion;->y:F

    mul-float/2addr v9, v3

    sub-float/2addr v8, v9

    aput v8, v6, v7

    .line 435
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v6, v6, Lcom/badlogic/gdx/math/Quaternion;->x:F

    neg-float v6, v6

    mul-float/2addr v6, v3

    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v7, v7, Lcom/badlogic/gdx/math/Quaternion;->y:F

    mul-float/2addr v7, v4

    sub-float/2addr v6, v7

    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v7, v7, Lcom/badlogic/gdx/math/Quaternion;->z:F

    mul-float/2addr v7, v5

    sub-float v2, v6, v7

    .line 436
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    invoke-virtual {v6}, Lcom/badlogic/gdx/math/Quaternion;->conjugate()Lcom/badlogic/gdx/math/Quaternion;

    .line 437
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    aget v3, v6, v12

    .line 438
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    aget v4, v6, v13

    .line 439
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    const/16 v7, 0x8

    aget v5, v6, v7

    .line 440
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v7, v7, Lcom/badlogic/gdx/math/Quaternion;->x:F

    mul-float/2addr v7, v2

    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v8, v8, Lcom/badlogic/gdx/math/Quaternion;->w:F

    mul-float/2addr v8, v3

    add-float/2addr v7, v8

    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v8, v8, Lcom/badlogic/gdx/math/Quaternion;->z:F

    mul-float/2addr v8, v4

    add-float/2addr v7, v8

    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v8, v8, Lcom/badlogic/gdx/math/Quaternion;->y:F

    mul-float/2addr v8, v5

    sub-float/2addr v7, v8

    aput v7, v6, v12

    .line 441
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v7, v7, Lcom/badlogic/gdx/math/Quaternion;->y:F

    mul-float/2addr v7, v2

    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v8, v8, Lcom/badlogic/gdx/math/Quaternion;->w:F

    mul-float/2addr v8, v4

    add-float/2addr v7, v8

    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v8, v8, Lcom/badlogic/gdx/math/Quaternion;->x:F

    mul-float/2addr v8, v5

    add-float/2addr v7, v8

    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v8, v8, Lcom/badlogic/gdx/math/Quaternion;->z:F

    mul-float/2addr v8, v3

    sub-float/2addr v7, v8

    aput v7, v6, v13

    .line 442
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    const/16 v7, 0x8

    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v8, v8, Lcom/badlogic/gdx/math/Quaternion;->z:F

    mul-float/2addr v8, v2

    iget-object v9, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v9, v9, Lcom/badlogic/gdx/math/Quaternion;->w:F

    mul-float/2addr v9, v5

    add-float/2addr v8, v9

    iget-object v9, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v9, v9, Lcom/badlogic/gdx/math/Quaternion;->y:F

    mul-float/2addr v9, v3

    add-float/2addr v8, v9

    iget-object v9, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v9, v9, Lcom/badlogic/gdx/math/Quaternion;->x:F

    mul-float/2addr v9, v4

    sub-float/2addr v8, v9

    aput v8, v6, v7

    .line 443
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    invoke-virtual {v6}, Lcom/badlogic/gdx/math/Quaternion;->conjugate()Lcom/badlogic/gdx/math/Quaternion;

    .line 445
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    aget v7, v6, v12

    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->position:Lcom/badlogic/gdx/math/Vector3;

    iget v8, v8, Lcom/badlogic/gdx/math/Vector3;->x:F

    sub-float/2addr v8, v0

    add-float/2addr v7, v8

    aput v7, v6, v12

    .line 446
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    aget v7, v6, v13

    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->position:Lcom/badlogic/gdx/math/Vector3;

    iget v8, v8, Lcom/badlogic/gdx/math/Vector3;->y:F

    sub-float/2addr v8, v1

    add-float/2addr v7, v8

    aput v7, v6, v13

    .line 447
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    const/16 v7, 0x8

    aget v8, v6, v7

    iget-object v9, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->position:Lcom/badlogic/gdx/math/Vector3;

    iget v9, v9, Lcom/badlogic/gdx/math/Vector3;->z:F

    add-float/2addr v8, v9

    aput v8, v6, v7

    .line 450
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    const/16 v7, 0xc

    aget v6, v6, v7

    add-float/2addr v6, v0

    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->scale:Lcom/badlogic/gdx/math/Vector2;

    iget v7, v7, Lcom/badlogic/gdx/math/Vector2;->x:F

    mul-float v3, v6, v7

    .line 451
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    const/16 v7, 0xd

    aget v6, v6, v7

    add-float/2addr v6, v1

    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->scale:Lcom/badlogic/gdx/math/Vector2;

    iget v7, v7, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float v4, v6, v7

    .line 452
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    const/16 v7, 0xe

    aget v5, v6, v7

    .line 454
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    const/16 v7, 0xc

    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v8, v8, Lcom/badlogic/gdx/math/Quaternion;->w:F

    mul-float/2addr v8, v3

    iget-object v9, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v9, v9, Lcom/badlogic/gdx/math/Quaternion;->y:F

    mul-float/2addr v9, v5

    add-float/2addr v8, v9

    iget-object v9, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v9, v9, Lcom/badlogic/gdx/math/Quaternion;->z:F

    mul-float/2addr v9, v4

    sub-float/2addr v8, v9

    aput v8, v6, v7

    .line 455
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    const/16 v7, 0xd

    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v8, v8, Lcom/badlogic/gdx/math/Quaternion;->w:F

    mul-float/2addr v8, v4

    iget-object v9, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v9, v9, Lcom/badlogic/gdx/math/Quaternion;->z:F

    mul-float/2addr v9, v3

    add-float/2addr v8, v9

    iget-object v9, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v9, v9, Lcom/badlogic/gdx/math/Quaternion;->x:F

    mul-float/2addr v9, v5

    sub-float/2addr v8, v9

    aput v8, v6, v7

    .line 456
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    const/16 v7, 0xe

    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v8, v8, Lcom/badlogic/gdx/math/Quaternion;->w:F

    mul-float/2addr v8, v5

    iget-object v9, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v9, v9, Lcom/badlogic/gdx/math/Quaternion;->x:F

    mul-float/2addr v9, v4

    add-float/2addr v8, v9

    iget-object v9, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v9, v9, Lcom/badlogic/gdx/math/Quaternion;->y:F

    mul-float/2addr v9, v3

    sub-float/2addr v8, v9

    aput v8, v6, v7

    .line 457
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v6, v6, Lcom/badlogic/gdx/math/Quaternion;->x:F

    neg-float v6, v6

    mul-float/2addr v6, v3

    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v7, v7, Lcom/badlogic/gdx/math/Quaternion;->y:F

    mul-float/2addr v7, v4

    sub-float/2addr v6, v7

    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v7, v7, Lcom/badlogic/gdx/math/Quaternion;->z:F

    mul-float/2addr v7, v5

    sub-float v2, v6, v7

    .line 458
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    invoke-virtual {v6}, Lcom/badlogic/gdx/math/Quaternion;->conjugate()Lcom/badlogic/gdx/math/Quaternion;

    .line 459
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    const/16 v7, 0xc

    aget v3, v6, v7

    .line 460
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    const/16 v7, 0xd

    aget v4, v6, v7

    .line 461
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    const/16 v7, 0xe

    aget v5, v6, v7

    .line 462
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    const/16 v7, 0xc

    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v8, v8, Lcom/badlogic/gdx/math/Quaternion;->x:F

    mul-float/2addr v8, v2

    iget-object v9, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v9, v9, Lcom/badlogic/gdx/math/Quaternion;->w:F

    mul-float/2addr v9, v3

    add-float/2addr v8, v9

    iget-object v9, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v9, v9, Lcom/badlogic/gdx/math/Quaternion;->z:F

    mul-float/2addr v9, v4

    add-float/2addr v8, v9

    iget-object v9, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v9, v9, Lcom/badlogic/gdx/math/Quaternion;->y:F

    mul-float/2addr v9, v5

    sub-float/2addr v8, v9

    aput v8, v6, v7

    .line 463
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    const/16 v7, 0xd

    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v8, v8, Lcom/badlogic/gdx/math/Quaternion;->y:F

    mul-float/2addr v8, v2

    iget-object v9, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v9, v9, Lcom/badlogic/gdx/math/Quaternion;->w:F

    mul-float/2addr v9, v4

    add-float/2addr v8, v9

    iget-object v9, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v9, v9, Lcom/badlogic/gdx/math/Quaternion;->x:F

    mul-float/2addr v9, v5

    add-float/2addr v8, v9

    iget-object v9, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v9, v9, Lcom/badlogic/gdx/math/Quaternion;->z:F

    mul-float/2addr v9, v3

    sub-float/2addr v8, v9

    aput v8, v6, v7

    .line 464
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    const/16 v7, 0xe

    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v8, v8, Lcom/badlogic/gdx/math/Quaternion;->z:F

    mul-float/2addr v8, v2

    iget-object v9, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v9, v9, Lcom/badlogic/gdx/math/Quaternion;->w:F

    mul-float/2addr v9, v5

    add-float/2addr v8, v9

    iget-object v9, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v9, v9, Lcom/badlogic/gdx/math/Quaternion;->y:F

    mul-float/2addr v9, v3

    add-float/2addr v8, v9

    iget-object v9, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v9, v9, Lcom/badlogic/gdx/math/Quaternion;->x:F

    mul-float/2addr v9, v4

    sub-float/2addr v8, v9

    aput v8, v6, v7

    .line 465
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    invoke-virtual {v6}, Lcom/badlogic/gdx/math/Quaternion;->conjugate()Lcom/badlogic/gdx/math/Quaternion;

    .line 467
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    const/16 v7, 0xc

    aget v8, v6, v7

    iget-object v9, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->position:Lcom/badlogic/gdx/math/Vector3;

    iget v9, v9, Lcom/badlogic/gdx/math/Vector3;->x:F

    sub-float/2addr v9, v0

    add-float/2addr v8, v9

    aput v8, v6, v7

    .line 468
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    const/16 v7, 0xd

    aget v8, v6, v7

    iget-object v9, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->position:Lcom/badlogic/gdx/math/Vector3;

    iget v9, v9, Lcom/badlogic/gdx/math/Vector3;->y:F

    sub-float/2addr v9, v1

    add-float/2addr v8, v9

    aput v8, v6, v7

    .line 469
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    const/16 v7, 0xe

    aget v8, v6, v7

    iget-object v9, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->position:Lcom/badlogic/gdx/math/Vector3;

    iget v9, v9, Lcom/badlogic/gdx/math/Vector3;->z:F

    add-float/2addr v8, v9

    aput v8, v6, v7

    .line 472
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    const/16 v7, 0x12

    aget v6, v6, v7

    add-float/2addr v6, v0

    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->scale:Lcom/badlogic/gdx/math/Vector2;

    iget v7, v7, Lcom/badlogic/gdx/math/Vector2;->x:F

    mul-float v3, v6, v7

    .line 473
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    const/16 v7, 0x13

    aget v6, v6, v7

    add-float/2addr v6, v1

    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->scale:Lcom/badlogic/gdx/math/Vector2;

    iget v7, v7, Lcom/badlogic/gdx/math/Vector2;->y:F

    mul-float v4, v6, v7

    .line 474
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    const/16 v7, 0x14

    aget v5, v6, v7

    .line 476
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    const/16 v7, 0x12

    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v8, v8, Lcom/badlogic/gdx/math/Quaternion;->w:F

    mul-float/2addr v8, v3

    iget-object v9, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v9, v9, Lcom/badlogic/gdx/math/Quaternion;->y:F

    mul-float/2addr v9, v5

    add-float/2addr v8, v9

    iget-object v9, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v9, v9, Lcom/badlogic/gdx/math/Quaternion;->z:F

    mul-float/2addr v9, v4

    sub-float/2addr v8, v9

    aput v8, v6, v7

    .line 477
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    const/16 v7, 0x13

    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v8, v8, Lcom/badlogic/gdx/math/Quaternion;->w:F

    mul-float/2addr v8, v4

    iget-object v9, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v9, v9, Lcom/badlogic/gdx/math/Quaternion;->z:F

    mul-float/2addr v9, v3

    add-float/2addr v8, v9

    iget-object v9, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v9, v9, Lcom/badlogic/gdx/math/Quaternion;->x:F

    mul-float/2addr v9, v5

    sub-float/2addr v8, v9

    aput v8, v6, v7

    .line 478
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    const/16 v7, 0x14

    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v8, v8, Lcom/badlogic/gdx/math/Quaternion;->w:F

    mul-float/2addr v8, v5

    iget-object v9, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v9, v9, Lcom/badlogic/gdx/math/Quaternion;->x:F

    mul-float/2addr v9, v4

    add-float/2addr v8, v9

    iget-object v9, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v9, v9, Lcom/badlogic/gdx/math/Quaternion;->y:F

    mul-float/2addr v9, v3

    sub-float/2addr v8, v9

    aput v8, v6, v7

    .line 479
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v6, v6, Lcom/badlogic/gdx/math/Quaternion;->x:F

    neg-float v6, v6

    mul-float/2addr v6, v3

    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v7, v7, Lcom/badlogic/gdx/math/Quaternion;->y:F

    mul-float/2addr v7, v4

    sub-float/2addr v6, v7

    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v7, v7, Lcom/badlogic/gdx/math/Quaternion;->z:F

    mul-float/2addr v7, v5

    sub-float v2, v6, v7

    .line 480
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    invoke-virtual {v6}, Lcom/badlogic/gdx/math/Quaternion;->conjugate()Lcom/badlogic/gdx/math/Quaternion;

    .line 481
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    const/16 v7, 0x12

    aget v3, v6, v7

    .line 482
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    const/16 v7, 0x13

    aget v4, v6, v7

    .line 483
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    const/16 v7, 0x14

    aget v5, v6, v7

    .line 484
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    const/16 v7, 0x12

    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v8, v8, Lcom/badlogic/gdx/math/Quaternion;->x:F

    mul-float/2addr v8, v2

    iget-object v9, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v9, v9, Lcom/badlogic/gdx/math/Quaternion;->w:F

    mul-float/2addr v9, v3

    add-float/2addr v8, v9

    iget-object v9, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v9, v9, Lcom/badlogic/gdx/math/Quaternion;->z:F

    mul-float/2addr v9, v4

    add-float/2addr v8, v9

    iget-object v9, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v9, v9, Lcom/badlogic/gdx/math/Quaternion;->y:F

    mul-float/2addr v9, v5

    sub-float/2addr v8, v9

    aput v8, v6, v7

    .line 485
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    const/16 v7, 0x13

    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v8, v8, Lcom/badlogic/gdx/math/Quaternion;->y:F

    mul-float/2addr v8, v2

    iget-object v9, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v9, v9, Lcom/badlogic/gdx/math/Quaternion;->w:F

    mul-float/2addr v9, v4

    add-float/2addr v8, v9

    iget-object v9, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v9, v9, Lcom/badlogic/gdx/math/Quaternion;->x:F

    mul-float/2addr v9, v5

    add-float/2addr v8, v9

    iget-object v9, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v9, v9, Lcom/badlogic/gdx/math/Quaternion;->z:F

    mul-float/2addr v9, v3

    sub-float/2addr v8, v9

    aput v8, v6, v7

    .line 486
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    const/16 v7, 0x14

    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v8, v8, Lcom/badlogic/gdx/math/Quaternion;->z:F

    mul-float/2addr v8, v2

    iget-object v9, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v9, v9, Lcom/badlogic/gdx/math/Quaternion;->w:F

    mul-float/2addr v9, v5

    add-float/2addr v8, v9

    iget-object v9, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v9, v9, Lcom/badlogic/gdx/math/Quaternion;->y:F

    mul-float/2addr v9, v3

    add-float/2addr v8, v9

    iget-object v9, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    iget v9, v9, Lcom/badlogic/gdx/math/Quaternion;->x:F

    mul-float/2addr v9, v4

    sub-float/2addr v8, v9

    aput v8, v6, v7

    .line 487
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    invoke-virtual {v6}, Lcom/badlogic/gdx/math/Quaternion;->conjugate()Lcom/badlogic/gdx/math/Quaternion;

    .line 489
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    const/16 v7, 0x12

    aget v8, v6, v7

    iget-object v9, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->position:Lcom/badlogic/gdx/math/Vector3;

    iget v9, v9, Lcom/badlogic/gdx/math/Vector3;->x:F

    sub-float/2addr v9, v0

    add-float/2addr v8, v9

    aput v8, v6, v7

    .line 490
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    const/16 v7, 0x13

    aget v8, v6, v7

    iget-object v9, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->position:Lcom/badlogic/gdx/math/Vector3;

    iget v9, v9, Lcom/badlogic/gdx/math/Vector3;->y:F

    sub-float/2addr v9, v1

    add-float/2addr v8, v9

    aput v8, v6, v7

    .line 491
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    const/16 v7, 0x14

    aget v8, v6, v7

    iget-object v9, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->position:Lcom/badlogic/gdx/math/Vector3;

    iget v9, v9, Lcom/badlogic/gdx/math/Vector3;->z:F

    add-float/2addr v8, v9

    aput v8, v6, v7

    .line 492
    iput-boolean v10, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->updated:Z

    .line 493
    return-void

    .line 402
    .end local v0    # "tx":F
    .end local v1    # "ty":F
    .end local v2    # "w":F
    .end local v3    # "x":F
    .end local v4    # "y":F
    .end local v5    # "z":F
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "ty":F
    move v0, v1

    .restart local v0    # "tx":F
    goto/16 :goto_0
.end method

.method public translate(FFF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .prologue
    .line 252
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->position:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, p1, p2, p3}, Lcom/badlogic/gdx/math/Vector3;->add(FFF)Lcom/badlogic/gdx/math/Vector3;

    .line 253
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->updated:Z

    .line 254
    return-void
.end method

.method public translate(Lcom/badlogic/gdx/math/Vector3;)V
    .locals 1
    .param p1, "trans"    # Lcom/badlogic/gdx/math/Vector3;

    .prologue
    .line 258
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->position:Lcom/badlogic/gdx/math/Vector3;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/math/Vector3;->add(Lcom/badlogic/gdx/math/Vector3;)Lcom/badlogic/gdx/math/Vector3;

    .line 259
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->updated:Z

    .line 260
    return-void
.end method

.method public translateX(F)V
    .locals 2
    .param p1, "units"    # F

    .prologue
    .line 187
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->position:Lcom/badlogic/gdx/math/Vector3;

    iget v1, v0, Lcom/badlogic/gdx/math/Vector3;->x:F

    add-float/2addr v1, p1

    iput v1, v0, Lcom/badlogic/gdx/math/Vector3;->x:F

    .line 188
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->updated:Z

    .line 189
    return-void
.end method

.method public translateY(F)V
    .locals 2
    .param p1, "units"    # F

    .prologue
    .line 208
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->position:Lcom/badlogic/gdx/math/Vector3;

    iget v1, v0, Lcom/badlogic/gdx/math/Vector3;->y:F

    add-float/2addr v1, p1

    iput v1, v0, Lcom/badlogic/gdx/math/Vector3;->y:F

    .line 209
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->updated:Z

    .line 210
    return-void
.end method

.method public translateZ(F)V
    .locals 2
    .param p1, "units"    # F

    .prologue
    .line 229
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->position:Lcom/badlogic/gdx/math/Vector3;

    iget v1, v0, Lcom/badlogic/gdx/math/Vector3;->z:F

    add-float/2addr v1, p1

    iput v1, v0, Lcom/badlogic/gdx/math/Vector3;->z:F

    .line 230
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->updated:Z

    .line 231
    return-void
.end method

.method protected update()V
    .locals 1

    .prologue
    .line 380
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->updated:Z

    if-nez v0, :cond_0

    .line 381
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->resetVertices()V

    .line 382
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->transformVertices()V

    .line 384
    :cond_0
    return-void
.end method

.method protected updateUVs()V
    .locals 4

    .prologue
    .line 524
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->material:Lcom/badlogic/gdx/graphics/g3d/decals/DecalMaterial;

    iget-object v0, v1, Lcom/badlogic/gdx/graphics/g3d/decals/DecalMaterial;->textureRegion:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 526
    .local v0, "tr":Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    const/4 v2, 0x4

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getU()F

    move-result v3

    aput v3, v1, v2

    .line 527
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    const/4 v2, 0x5

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getV()F

    move-result v3

    aput v3, v1, v2

    .line 529
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    const/16 v2, 0xa

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getU2()F

    move-result v3

    aput v3, v1, v2

    .line 530
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    const/16 v2, 0xb

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getV()F

    move-result v3

    aput v3, v1, v2

    .line 532
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    const/16 v2, 0x10

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getU()F

    move-result v3

    aput v3, v1, v2

    .line 533
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    const/16 v2, 0x11

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getV2()F

    move-result v3

    aput v3, v1, v2

    .line 535
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    const/16 v2, 0x16

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getU2()F

    move-result v3

    aput v3, v1, v2

    .line 536
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/decals/Decal;->vertices:[F

    const/16 v2, 0x17

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getV2()F

    move-result v3

    aput v3, v1, v2

    .line 537
    return-void
.end method
