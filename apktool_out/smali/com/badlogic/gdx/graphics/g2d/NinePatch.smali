.class public Lcom/badlogic/gdx/graphics/g2d/NinePatch;
.super Ljava/lang/Object;
.source "NinePatch.java"


# static fields
.field public static final BOTTOM_CENTER:I = 0x7

.field public static final BOTTOM_LEFT:I = 0x6

.field public static final BOTTOM_RIGHT:I = 0x8

.field public static final MIDDLE_CENTER:I = 0x4

.field public static final MIDDLE_LEFT:I = 0x3

.field public static final MIDDLE_RIGHT:I = 0x5

.field public static final TOP_CENTER:I = 0x1

.field public static final TOP_LEFT:I = 0x0

.field public static final TOP_RIGHT:I = 0x2

.field private static final tmpDrawColor:Lcom/badlogic/gdx/graphics/Color;


# instance fields
.field private bottomCenter:I

.field private bottomHeight:F

.field private bottomLeft:I

.field private bottomRight:I

.field private final color:Lcom/badlogic/gdx/graphics/Color;

.field private idx:I

.field private leftWidth:F

.field private middleCenter:I

.field private middleHeight:F

.field private middleLeft:I

.field private middleRight:I

.field private middleWidth:F

.field private padBottom:I

.field private padLeft:I

.field private padRight:I

.field private padTop:I

.field private rightWidth:F

.field private texture:Lcom/badlogic/gdx/graphics/Texture;

.field private topCenter:I

.field private topHeight:F

.field private topLeft:I

.field private topRight:I

.field private vertices:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/Color;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->tmpDrawColor:Lcom/badlogic/gdx/graphics/Color;

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/Texture;)V
    .locals 1
    .param p1, "texture"    # Lcom/badlogic/gdx/graphics/Texture;

    .prologue
    .line 131
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-direct {v0, p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/Texture;)V

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 132
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/Texture;IIII)V
    .locals 6
    .param p1, "texture"    # Lcom/badlogic/gdx/graphics/Texture;
    .param p2, "left"    # I
    .param p3, "right"    # I
    .param p4, "top"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 69
    new-instance v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-direct {v1, p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/Texture;)V

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;IIII)V

    .line 70
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/Texture;Lcom/badlogic/gdx/graphics/Color;)V
    .locals 0
    .param p1, "texture"    # Lcom/badlogic/gdx/graphics/Texture;
    .param p2, "color"    # Lcom/badlogic/gdx/graphics/Color;

    .prologue
    .line 125
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;-><init>(Lcom/badlogic/gdx/graphics/Texture;)V

    .line 126
    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 127
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g2d/NinePatch;)V
    .locals 1
    .param p1, "ninePatch"    # Lcom/badlogic/gdx/graphics/g2d/NinePatch;

    .prologue
    .line 188
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;-><init>(Lcom/badlogic/gdx/graphics/g2d/NinePatch;Lcom/badlogic/gdx/graphics/Color;)V

    .line 189
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g2d/NinePatch;Lcom/badlogic/gdx/graphics/Color;)V
    .locals 4
    .param p1, "ninePatch"    # Lcom/badlogic/gdx/graphics/g2d/NinePatch;
    .param p2, "color"    # Lcom/badlogic/gdx/graphics/Color;

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput v2, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->bottomLeft:I

    iput v2, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->bottomCenter:I

    iput v2, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->bottomRight:I

    .line 53
    iput v2, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->middleLeft:I

    iput v2, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->middleCenter:I

    iput v2, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->middleRight:I

    .line 54
    iput v2, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->topLeft:I

    iput v2, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->topCenter:I

    iput v2, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->topRight:I

    .line 56
    const/16 v0, 0xb4

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->vertices:[F

    .line 58
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(Lcom/badlogic/gdx/graphics/Color;)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->color:Lcom/badlogic/gdx/graphics/Color;

    .line 59
    iput v2, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->padLeft:I

    iput v2, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->padRight:I

    iput v2, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->padTop:I

    iput v2, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->padBottom:I

    .line 192
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->texture:Lcom/badlogic/gdx/graphics/Texture;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->texture:Lcom/badlogic/gdx/graphics/Texture;

    .line 194
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->bottomLeft:I

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->bottomLeft:I

    .line 195
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->bottomCenter:I

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->bottomCenter:I

    .line 196
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->bottomRight:I

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->bottomRight:I

    .line 197
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->middleLeft:I

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->middleLeft:I

    .line 198
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->middleCenter:I

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->middleCenter:I

    .line 199
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->middleRight:I

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->middleRight:I

    .line 200
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->topLeft:I

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->topLeft:I

    .line 201
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->topCenter:I

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->topCenter:I

    .line 202
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->topRight:I

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->topRight:I

    .line 204
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->leftWidth:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->leftWidth:F

    .line 205
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->rightWidth:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->rightWidth:F

    .line 206
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->middleWidth:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->middleWidth:F

    .line 207
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->middleHeight:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->middleHeight:F

    .line 208
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->topHeight:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->topHeight:F

    .line 209
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->bottomHeight:F

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->bottomHeight:F

    .line 211
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->padLeft:I

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->padLeft:I

    .line 212
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->padTop:I

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->padTop:I

    .line 213
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->padBottom:I

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->padBottom:I

    .line 214
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->padRight:I

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->padRight:I

    .line 216
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->vertices:[F

    array-length v0, v0

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->vertices:[F

    .line 217
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->vertices:[F

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->vertices:[F

    iget-object v2, p1, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->vertices:[F

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 218
    iget v0, p1, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->idx:I

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->idx:I

    .line 219
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, p2}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    .line 220
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V
    .locals 4
    .param p1, "region"    # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput v2, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->bottomLeft:I

    iput v2, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->bottomCenter:I

    iput v2, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->bottomRight:I

    .line 53
    iput v2, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->middleLeft:I

    iput v2, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->middleCenter:I

    iput v2, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->middleRight:I

    .line 54
    iput v2, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->topLeft:I

    iput v2, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->topCenter:I

    iput v2, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->topRight:I

    .line 56
    const/16 v0, 0xb4

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->vertices:[F

    .line 58
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(Lcom/badlogic/gdx/graphics/Color;)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->color:Lcom/badlogic/gdx/graphics/Color;

    .line 59
    iput v2, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->padLeft:I

    iput v2, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->padRight:I

    iput v2, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->padTop:I

    iput v2, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->padBottom:I

    .line 142
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v1, 0x0

    aput-object v3, v0, v1

    const/4 v1, 0x1

    aput-object v3, v0, v1

    const/4 v1, 0x2

    aput-object v3, v0, v1

    const/4 v1, 0x3

    aput-object v3, v0, v1

    const/4 v1, 0x4

    aput-object p1, v0, v1

    const/4 v1, 0x5

    aput-object v3, v0, v1

    const/4 v1, 0x6

    aput-object v3, v0, v1

    const/4 v1, 0x7

    aput-object v3, v0, v1

    const/16 v1, 0x8

    aput-object v3, v0, v1

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->load([Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 148
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;IIII)V
    .locals 10
    .param p1, "region"    # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .param p2, "left"    # I
    .param p3, "right"    # I
    .param p4, "top"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->bottomLeft:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->bottomCenter:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->bottomRight:I

    .line 53
    const/4 v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->middleLeft:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->middleCenter:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->middleRight:I

    .line 54
    const/4 v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->topLeft:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->topCenter:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->topRight:I

    .line 56
    const/16 v0, 0xb4

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->vertices:[F

    .line 58
    new-instance v0, Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/Color;-><init>(Lcom/badlogic/gdx/graphics/Color;)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->color:Lcom/badlogic/gdx/graphics/Color;

    .line 59
    const/4 v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->padLeft:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->padRight:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->padTop:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->padBottom:I

    .line 80
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "region cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_0
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v0

    sub-int/2addr v0, p2

    sub-int v7, v0, p3

    .line 82
    .local v7, "middleWidth":I
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v0

    sub-int/2addr v0, p4

    sub-int v6, v0, p5

    .line 84
    .local v6, "middleHeight":I
    const/16 v0, 0x9

    new-array v8, v0, [Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 85
    .local v8, "patches":[Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    if-lez p4, :cond_3

    .line 86
    if-lez p2, :cond_1

    const/4 v9, 0x0

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    move v4, p2

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;IIII)V

    aput-object v0, v8, v9

    .line 87
    :cond_1
    if-lez v7, :cond_2

    const/4 v9, 0x1

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v3, 0x0

    move-object v1, p1

    move v2, p2

    move v4, v7

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;IIII)V

    aput-object v0, v8, v9

    .line 88
    :cond_2
    if-lez p3, :cond_3

    const/4 v9, 0x2

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    add-int v2, p2, v7

    const/4 v3, 0x0

    move-object v1, p1

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;IIII)V

    aput-object v0, v8, v9

    .line 90
    :cond_3
    if-lez v6, :cond_6

    .line 91
    if-lez p2, :cond_4

    const/4 v9, 0x3

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v2, 0x0

    move-object v1, p1

    move v3, p4

    move v4, p2

    move v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;IIII)V

    aput-object v0, v8, v9

    .line 92
    :cond_4
    if-lez v7, :cond_5

    const/4 v9, 0x4

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-object v1, p1

    move v2, p2

    move v3, p4

    move v4, v7

    move v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;IIII)V

    aput-object v0, v8, v9

    .line 93
    :cond_5
    if-lez p3, :cond_6

    const/4 v9, 0x5

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    add-int v2, p2, v7

    move-object v1, p1

    move v3, p4

    move v4, p3

    move v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;IIII)V

    aput-object v0, v8, v9

    .line 95
    :cond_6
    if-lez p5, :cond_9

    .line 96
    if-lez p2, :cond_7

    const/4 v9, 0x6

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v2, 0x0

    add-int v3, p4, v6

    move-object v1, p1

    move v4, p2

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;IIII)V

    aput-object v0, v8, v9

    .line 97
    :cond_7
    if-lez v7, :cond_8

    const/4 v9, 0x7

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    add-int v3, p4, v6

    move-object v1, p1

    move v2, p2

    move v4, v7

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;IIII)V

    aput-object v0, v8, v9

    .line 98
    :cond_8
    if-lez p3, :cond_9

    const/16 v9, 0x8

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    add-int v2, p2, v7

    add-int v3, p4, v6

    move-object v1, p1

    move v4, p3

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;IIII)V

    aput-object v0, v8, v9

    .line 102
    :cond_9
    if-nez p2, :cond_a

    if-nez v7, :cond_a

    .line 103
    const/4 v0, 0x1

    const/4 v1, 0x2

    aget-object v1, v8, v1

    aput-object v1, v8, v0

    .line 104
    const/4 v0, 0x4

    const/4 v1, 0x5

    aget-object v1, v8, v1

    aput-object v1, v8, v0

    .line 105
    const/4 v0, 0x7

    const/16 v1, 0x8

    aget-object v1, v8, v1

    aput-object v1, v8, v0

    .line 106
    const/4 v0, 0x2

    const/4 v1, 0x0

    aput-object v1, v8, v0

    .line 107
    const/4 v0, 0x5

    const/4 v1, 0x0

    aput-object v1, v8, v0

    .line 108
    const/16 v0, 0x8

    const/4 v1, 0x0

    aput-object v1, v8, v0

    .line 111
    :cond_a
    if-nez p4, :cond_b

    if-nez v6, :cond_b

    .line 112
    const/4 v0, 0x3

    const/4 v1, 0x6

    aget-object v1, v8, v1

    aput-object v1, v8, v0

    .line 113
    const/4 v0, 0x4

    const/4 v1, 0x7

    aget-object v1, v8, v1

    aput-object v1, v8, v0

    .line 114
    const/4 v0, 0x5

    const/16 v1, 0x8

    aget-object v1, v8, v1

    aput-object v1, v8, v0

    .line 115
    const/4 v0, 0x6

    const/4 v1, 0x0

    aput-object v1, v8, v0

    .line 116
    const/4 v0, 0x7

    const/4 v1, 0x0

    aput-object v1, v8, v0

    .line 117
    const/16 v0, 0x8

    const/4 v1, 0x0

    aput-object v1, v8, v0

    .line 120
    :cond_b
    invoke-direct {p0, v8}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->load([Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 121
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;Lcom/badlogic/gdx/graphics/Color;)V
    .locals 0
    .param p1, "region"    # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .param p2, "color"    # Lcom/badlogic/gdx/graphics/Color;

    .prologue
    .line 136
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;-><init>(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 137
    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->setColor(Lcom/badlogic/gdx/graphics/Color;)V

    .line 138
    return-void
.end method

.method public varargs constructor <init>([Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V
    .locals 11
    .param p1, "patches"    # [Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .prologue
    const/16 v10, 0x8

    const/4 v9, 0x6

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput v6, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->bottomLeft:I

    iput v6, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->bottomCenter:I

    iput v6, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->bottomRight:I

    .line 53
    iput v6, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->middleLeft:I

    iput v6, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->middleCenter:I

    iput v6, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->middleRight:I

    .line 54
    iput v6, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->topLeft:I

    iput v6, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->topCenter:I

    iput v6, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->topRight:I

    .line 56
    const/16 v4, 0xb4

    new-array v4, v4, [F

    iput-object v4, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->vertices:[F

    .line 58
    new-instance v4, Lcom/badlogic/gdx/graphics/Color;

    sget-object v5, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-direct {v4, v5}, Lcom/badlogic/gdx/graphics/Color;-><init>(Lcom/badlogic/gdx/graphics/Color;)V

    iput-object v4, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->color:Lcom/badlogic/gdx/graphics/Color;

    .line 59
    iput v6, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->padLeft:I

    iput v6, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->padRight:I

    iput v6, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->padTop:I

    iput v6, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->padBottom:I

    .line 154
    if-eqz p1, :cond_0

    array-length v4, p1

    const/16 v5, 0x9

    if-eq v4, v5, :cond_1

    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "NinePatch needs nine TextureRegions"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 156
    :cond_1
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->load([Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 158
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->getLeftWidth()F

    move-result v1

    .line 159
    .local v1, "leftWidth":F
    aget-object v4, p1, v7

    if-eqz v4, :cond_2

    aget-object v4, p1, v7

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v4, v4, v1

    if-nez v4, :cond_4

    :cond_2
    const/4 v4, 0x3

    aget-object v4, p1, v4

    if-eqz v4, :cond_3

    const/4 v4, 0x3

    aget-object v4, p1, v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v4, v4, v1

    if-nez v4, :cond_4

    :cond_3
    aget-object v4, p1, v9

    if-eqz v4, :cond_5

    aget-object v4, p1, v9

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v4, v4, v1

    if-eqz v4, :cond_5

    .line 162
    :cond_4
    new-instance v4, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v5, "Left side patches must have the same width"

    invoke-direct {v4, v5}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 165
    :cond_5
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->getRightWidth()F

    move-result v2

    .line 166
    .local v2, "rightWidth":F
    aget-object v4, p1, v8

    if-eqz v4, :cond_6

    aget-object v4, p1, v8

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v4, v4, v2

    if-nez v4, :cond_8

    :cond_6
    const/4 v4, 0x5

    aget-object v4, p1, v4

    if-eqz v4, :cond_7

    const/4 v4, 0x5

    aget-object v4, p1, v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v4, v4, v2

    if-nez v4, :cond_8

    :cond_7
    aget-object v4, p1, v10

    if-eqz v4, :cond_9

    aget-object v4, p1, v10

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v4, v4, v2

    if-eqz v4, :cond_9

    .line 169
    :cond_8
    new-instance v4, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v5, "Right side patches must have the same width"

    invoke-direct {v4, v5}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 172
    :cond_9
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->getBottomHeight()F

    move-result v0

    .line 173
    .local v0, "bottomHeight":F
    aget-object v4, p1, v9

    if-eqz v4, :cond_a

    aget-object v4, p1, v9

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v4, v4, v0

    if-nez v4, :cond_c

    :cond_a
    const/4 v4, 0x7

    aget-object v4, p1, v4

    if-eqz v4, :cond_b

    const/4 v4, 0x7

    aget-object v4, p1, v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v4, v4, v0

    if-nez v4, :cond_c

    :cond_b
    aget-object v4, p1, v10

    if-eqz v4, :cond_d

    aget-object v4, p1, v10

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v4, v4, v0

    if-eqz v4, :cond_d

    .line 176
    :cond_c
    new-instance v4, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v5, "Bottom side patches must have the same height"

    invoke-direct {v4, v5}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 179
    :cond_d
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->getTopHeight()F

    move-result v3

    .line 180
    .local v3, "topHeight":F
    aget-object v4, p1, v7

    if-eqz v4, :cond_e

    aget-object v4, p1, v7

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v4, v4, v3

    if-nez v4, :cond_10

    :cond_e
    const/4 v4, 0x1

    aget-object v4, p1, v4

    if-eqz v4, :cond_f

    const/4 v4, 0x1

    aget-object v4, p1, v4

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v4, v4, v3

    if-nez v4, :cond_10

    :cond_f
    aget-object v4, p1, v8

    if-eqz v4, :cond_11

    aget-object v4, p1, v8

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v4, v4, v3

    if-eqz v4, :cond_11

    .line 183
    :cond_10
    new-instance v4, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v5, "Top side patches must have the same height"

    invoke-direct {v4, v5}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 185
    :cond_11
    return-void
.end method

.method private add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FZZ)I
    .locals 10
    .param p1, "region"    # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .param p2, "color"    # F
    .param p3, "isStretchW"    # Z
    .param p4, "isStretchH"    # Z

    .prologue
    const/high16 v9, 0x3f000000    # 0.5f

    .line 278
    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->texture:Lcom/badlogic/gdx/graphics/Texture;

    if-nez v7, :cond_3

    .line 279
    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v7

    iput-object v7, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->texture:Lcom/badlogic/gdx/graphics/Texture;

    .line 283
    :cond_0
    iget v2, p1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u:F

    .line 284
    .local v2, "u":F
    iget v4, p1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v2:F

    .line 285
    .local v4, "v":F
    iget v3, p1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->u2:F

    .line 286
    .local v3, "u2":F
    iget v5, p1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->v:F

    .line 291
    .local v5, "v2":F
    if-eqz p3, :cond_1

    .line 292
    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->texture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v7}, Lcom/badlogic/gdx/graphics/Texture;->getWidth()I

    move-result v7

    int-to-float v7, v7

    div-float v1, v9, v7

    .line 293
    .local v1, "halfTexelWidth":F
    add-float/2addr v2, v1

    .line 294
    sub-float/2addr v3, v1

    .line 296
    .end local v1    # "halfTexelWidth":F
    :cond_1
    if-eqz p4, :cond_2

    .line 297
    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->texture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v7}, Lcom/badlogic/gdx/graphics/Texture;->getHeight()I

    move-result v7

    int-to-float v7, v7

    div-float v0, v9, v7

    .line 298
    .local v0, "halfTexelHeight":F
    sub-float/2addr v4, v0

    .line 299
    add-float/2addr v5, v0

    .line 302
    .end local v0    # "halfTexelHeight":F
    :cond_2
    iget-object v6, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->vertices:[F

    .line 304
    .local v6, "vertices":[F
    iget v7, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->idx:I

    add-int/lit8 v7, v7, 0x2

    iput v7, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->idx:I

    .line 305
    iget v7, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->idx:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->idx:I

    aput p2, v6, v7

    .line 306
    iget v7, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->idx:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->idx:I

    aput v2, v6, v7

    .line 307
    iget v7, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->idx:I

    aput v4, v6, v7

    .line 308
    iget v7, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->idx:I

    add-int/lit8 v7, v7, 0x3

    iput v7, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->idx:I

    .line 309
    iget v7, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->idx:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->idx:I

    aput p2, v6, v7

    .line 310
    iget v7, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->idx:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->idx:I

    aput v2, v6, v7

    .line 311
    iget v7, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->idx:I

    aput v5, v6, v7

    .line 312
    iget v7, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->idx:I

    add-int/lit8 v7, v7, 0x3

    iput v7, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->idx:I

    .line 313
    iget v7, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->idx:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->idx:I

    aput p2, v6, v7

    .line 314
    iget v7, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->idx:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->idx:I

    aput v3, v6, v7

    .line 315
    iget v7, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->idx:I

    aput v5, v6, v7

    .line 316
    iget v7, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->idx:I

    add-int/lit8 v7, v7, 0x3

    iput v7, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->idx:I

    .line 317
    iget v7, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->idx:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->idx:I

    aput p2, v6, v7

    .line 318
    iget v7, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->idx:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->idx:I

    aput v3, v6, v7

    .line 319
    iget v7, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->idx:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->idx:I

    aput v4, v6, v7

    .line 321
    iget v7, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->idx:I

    add-int/lit8 v7, v7, -0x14

    return v7

    .line 280
    .end local v2    # "u":F
    .end local v3    # "u2":F
    .end local v4    # "v":F
    .end local v5    # "v2":F
    .end local v6    # "vertices":[F
    :cond_3
    iget-object v7, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->texture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v8

    if-eq v7, v8, :cond_0

    .line 281
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "All regions must be from the same texture."

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method private load([Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V
    .locals 9
    .param p1, "patches"    # [Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 223
    sget-object v2, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v0

    .line 225
    .local v0, "color":F
    const/4 v2, 0x6

    aget-object v2, p1, v2

    if-eqz v2, :cond_0

    .line 226
    const/4 v2, 0x6

    aget-object v2, p1, v2

    invoke-direct {p0, v2, v0, v4, v4}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FZZ)I

    move-result v2

    iput v2, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->bottomLeft:I

    .line 227
    const/4 v2, 0x6

    aget-object v2, p1, v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->leftWidth:F

    .line 228
    const/4 v2, 0x6

    aget-object v2, p1, v2

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->bottomHeight:F

    .line 230
    :cond_0
    const/4 v2, 0x7

    aget-object v2, p1, v2

    if-eqz v2, :cond_1

    .line 231
    const/4 v2, 0x7

    aget-object v2, p1, v2

    invoke-direct {p0, v2, v0, v5, v4}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FZZ)I

    move-result v2

    iput v2, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->bottomCenter:I

    .line 232
    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->middleWidth:F

    const/4 v3, 0x7

    aget-object v3, p1, v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->middleWidth:F

    .line 233
    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->bottomHeight:F

    const/4 v3, 0x7

    aget-object v3, p1, v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->bottomHeight:F

    .line 235
    :cond_1
    const/16 v2, 0x8

    aget-object v2, p1, v2

    if-eqz v2, :cond_2

    .line 236
    const/16 v2, 0x8

    aget-object v2, p1, v2

    invoke-direct {p0, v2, v0, v4, v4}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FZZ)I

    move-result v2

    iput v2, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->bottomRight:I

    .line 237
    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->rightWidth:F

    const/16 v3, 0x8

    aget-object v3, p1, v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->rightWidth:F

    .line 238
    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->bottomHeight:F

    const/16 v3, 0x8

    aget-object v3, p1, v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->bottomHeight:F

    .line 240
    :cond_2
    aget-object v2, p1, v7

    if-eqz v2, :cond_3

    .line 241
    aget-object v2, p1, v7

    invoke-direct {p0, v2, v0, v4, v5}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FZZ)I

    move-result v2

    iput v2, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->middleLeft:I

    .line 242
    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->leftWidth:F

    aget-object v3, p1, v7

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->leftWidth:F

    .line 243
    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->middleHeight:F

    aget-object v3, p1, v7

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->middleHeight:F

    .line 245
    :cond_3
    aget-object v2, p1, v8

    if-eqz v2, :cond_4

    .line 246
    aget-object v2, p1, v8

    invoke-direct {p0, v2, v0, v5, v5}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FZZ)I

    move-result v2

    iput v2, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->middleCenter:I

    .line 247
    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->middleWidth:F

    aget-object v3, p1, v8

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->middleWidth:F

    .line 248
    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->middleHeight:F

    aget-object v3, p1, v8

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->middleHeight:F

    .line 250
    :cond_4
    const/4 v2, 0x5

    aget-object v2, p1, v2

    if-eqz v2, :cond_5

    .line 251
    const/4 v2, 0x5

    aget-object v2, p1, v2

    invoke-direct {p0, v2, v0, v4, v5}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FZZ)I

    move-result v2

    iput v2, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->middleRight:I

    .line 252
    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->rightWidth:F

    const/4 v3, 0x5

    aget-object v3, p1, v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->rightWidth:F

    .line 253
    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->middleHeight:F

    const/4 v3, 0x5

    aget-object v3, p1, v3

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->middleHeight:F

    .line 255
    :cond_5
    aget-object v2, p1, v4

    if-eqz v2, :cond_6

    .line 256
    aget-object v2, p1, v4

    invoke-direct {p0, v2, v0, v4, v4}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FZZ)I

    move-result v2

    iput v2, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->topLeft:I

    .line 257
    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->leftWidth:F

    aget-object v3, p1, v4

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->leftWidth:F

    .line 258
    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->topHeight:F

    aget-object v3, p1, v4

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->topHeight:F

    .line 260
    :cond_6
    aget-object v2, p1, v5

    if-eqz v2, :cond_7

    .line 261
    aget-object v2, p1, v5

    invoke-direct {p0, v2, v0, v5, v4}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FZZ)I

    move-result v2

    iput v2, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->topCenter:I

    .line 262
    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->middleWidth:F

    aget-object v3, p1, v5

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->middleWidth:F

    .line 263
    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->topHeight:F

    aget-object v3, p1, v5

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->topHeight:F

    .line 265
    :cond_7
    aget-object v2, p1, v6

    if-eqz v2, :cond_8

    .line 266
    aget-object v2, p1, v6

    invoke-direct {p0, v2, v0, v4, v4}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->add(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;FZZ)I

    move-result v2

    iput v2, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->topRight:I

    .line 267
    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->rightWidth:F

    aget-object v3, p1, v6

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->rightWidth:F

    .line 268
    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->topHeight:F

    aget-object v3, p1, v6

    invoke-virtual {v3}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getRegionHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->topHeight:F

    .line 270
    :cond_8
    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->idx:I

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->vertices:[F

    array-length v3, v3

    if-ge v2, v3, :cond_9

    .line 271
    iget v2, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->idx:I

    new-array v1, v2, [F

    .line 272
    .local v1, "newVertices":[F
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->vertices:[F

    iget v3, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->idx:I

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 273
    iput-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->vertices:[F

    .line 275
    .end local v1    # "newVertices":[F
    :cond_9
    return-void
.end method

.method private set(IFFFFF)V
    .locals 4
    .param p1, "idx"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F
    .param p6, "color"    # F

    .prologue
    .line 326
    add-float v0, p2, p4

    .line 327
    .local v0, "fx2":F
    add-float v1, p3, p5

    .line 328
    .local v1, "fy2":F
    iget-object v3, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->vertices:[F

    .line 329
    .local v3, "vertices":[F
    add-int/lit8 v2, p1, 0x1

    .end local p1    # "idx":I
    .local v2, "idx":I
    aput p2, v3, p1

    .line 330
    add-int/lit8 p1, v2, 0x1

    .end local v2    # "idx":I
    .restart local p1    # "idx":I
    aput p3, v3, v2

    .line 331
    aput p6, v3, p1

    .line 332
    add-int/lit8 p1, p1, 0x3

    .line 333
    add-int/lit8 v2, p1, 0x1

    .end local p1    # "idx":I
    .restart local v2    # "idx":I
    aput p2, v3, p1

    .line 334
    add-int/lit8 p1, v2, 0x1

    .end local v2    # "idx":I
    .restart local p1    # "idx":I
    aput v1, v3, v2

    .line 335
    aput p6, v3, p1

    .line 336
    add-int/lit8 p1, p1, 0x3

    .line 337
    add-int/lit8 v2, p1, 0x1

    .end local p1    # "idx":I
    .restart local v2    # "idx":I
    aput v0, v3, p1

    .line 338
    add-int/lit8 p1, v2, 0x1

    .end local v2    # "idx":I
    .restart local p1    # "idx":I
    aput v1, v3, v2

    .line 339
    aput p6, v3, p1

    .line 340
    add-int/lit8 p1, p1, 0x3

    .line 341
    add-int/lit8 v2, p1, 0x1

    .end local p1    # "idx":I
    .restart local v2    # "idx":I
    aput v0, v3, p1

    .line 342
    add-int/lit8 p1, v2, 0x1

    .end local v2    # "idx":I
    .restart local p1    # "idx":I
    aput p3, v3, v2

    .line 343
    aput p6, v3, p1

    .line 344
    return-void
.end method


# virtual methods
.method public draw(Lcom/badlogic/gdx/graphics/g2d/Batch;FFFF)V
    .locals 11
    .param p1, "batch"    # Lcom/badlogic/gdx/graphics/g2d/Batch;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "width"    # F
    .param p5, "height"    # F

    .prologue
    .line 347
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->leftWidth:F

    add-float v7, p2, v0

    .line 348
    .local v7, "centerColumnX":F
    add-float v0, p2, p4

    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->rightWidth:F

    sub-float v9, v0, v1

    .line 349
    .local v9, "rightColumnX":F
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->bottomHeight:F

    add-float v8, p3, v0

    .line 350
    .local v8, "middleRowY":F
    add-float v0, p3, p5

    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->topHeight:F

    sub-float v10, v0, v1

    .line 351
    .local v10, "topRowY":F
    sget-object v0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->tmpDrawColor:Lcom/badlogic/gdx/graphics/Color;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    invoke-interface {p1}, Lcom/badlogic/gdx/graphics/g2d/Batch;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/Color;->mul(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Color;->toFloatBits()F

    move-result v6

    .line 353
    .local v6, "c":F
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->bottomLeft:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->bottomLeft:I

    sub-float v4, v7, p2

    sub-float v5, v8, p3

    move-object v0, p0

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->set(IFFFFF)V

    .line 354
    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->bottomCenter:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->bottomCenter:I

    sub-float v4, v9, v7

    sub-float v5, v8, p3

    move-object v0, p0

    move v2, v7

    move v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->set(IFFFFF)V

    .line 355
    :cond_1
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->bottomRight:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->bottomRight:I

    add-float v0, p2, p4

    sub-float v4, v0, v9

    sub-float v5, v8, p3

    move-object v0, p0

    move v2, v9

    move v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->set(IFFFFF)V

    .line 356
    :cond_2
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->middleLeft:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->middleLeft:I

    sub-float v4, v7, p2

    sub-float v5, v10, v8

    move-object v0, p0

    move v2, p2

    move v3, v8

    invoke-direct/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->set(IFFFFF)V

    .line 357
    :cond_3
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->middleCenter:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_4

    .line 358
    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->middleCenter:I

    sub-float v4, v9, v7

    sub-float v5, v10, v8

    move-object v0, p0

    move v2, v7

    move v3, v8

    invoke-direct/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->set(IFFFFF)V

    .line 359
    :cond_4
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->middleRight:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_5

    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->middleRight:I

    add-float v0, p2, p4

    sub-float v4, v0, v9

    sub-float v5, v10, v8

    move-object v0, p0

    move v2, v9

    move v3, v8

    invoke-direct/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->set(IFFFFF)V

    .line 360
    :cond_5
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->topLeft:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->topLeft:I

    sub-float v4, v7, p2

    add-float v0, p3, p5

    sub-float v5, v0, v10

    move-object v0, p0

    move v2, p2

    move v3, v10

    invoke-direct/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->set(IFFFFF)V

    .line 361
    :cond_6
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->topCenter:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->topCenter:I

    sub-float v4, v9, v7

    add-float v0, p3, p5

    sub-float v5, v0, v10

    move-object v0, p0

    move v2, v7

    move v3, v10

    invoke-direct/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->set(IFFFFF)V

    .line 362
    :cond_7
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->topRight:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_8

    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->topRight:I

    add-float v0, p2, p4

    sub-float v4, v0, v9

    add-float v0, p3, p5

    sub-float v5, v0, v10

    move-object v0, p0

    move v2, v9

    move v3, v10

    invoke-direct/range {v0 .. v6}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->set(IFFFFF)V

    .line 364
    :cond_8
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->texture:Lcom/badlogic/gdx/graphics/Texture;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->vertices:[F

    const/4 v2, 0x0

    iget v3, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->idx:I

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/g2d/Batch;->draw(Lcom/badlogic/gdx/graphics/Texture;[FII)V

    .line 365
    return-void
.end method

.method public getBottomHeight()F
    .locals 1

    .prologue
    .line 405
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->bottomHeight:F

    return v0
.end method

.method public getColor()Lcom/badlogic/gdx/graphics/Color;
    .locals 1

    .prologue
    .line 374
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->color:Lcom/badlogic/gdx/graphics/Color;

    return-object v0
.end method

.method public getLeftWidth()F
    .locals 1

    .prologue
    .line 378
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->leftWidth:F

    return v0
.end method

.method public getMiddleHeight()F
    .locals 1

    .prologue
    .line 425
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->middleHeight:F

    return v0
.end method

.method public getMiddleWidth()F
    .locals 1

    .prologue
    .line 414
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->middleWidth:F

    return v0
.end method

.method public getPadBottom()F
    .locals 2

    .prologue
    .line 487
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->padBottom:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->getBottomHeight()F

    move-result v0

    .line 488
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->padBottom:I

    int-to-float v0, v0

    goto :goto_0
.end method

.method public getPadLeft()F
    .locals 2

    .prologue
    .line 454
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->padLeft:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->getLeftWidth()F

    move-result v0

    .line 455
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->padLeft:I

    int-to-float v0, v0

    goto :goto_0
.end method

.method public getPadRight()F
    .locals 2

    .prologue
    .line 465
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->padRight:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->getRightWidth()F

    move-result v0

    .line 466
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->padRight:I

    int-to-float v0, v0

    goto :goto_0
.end method

.method public getPadTop()F
    .locals 2

    .prologue
    .line 476
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->padTop:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->getTopHeight()F

    move-result v0

    .line 477
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->padTop:I

    int-to-float v0, v0

    goto :goto_0
.end method

.method public getRightWidth()F
    .locals 1

    .prologue
    .line 387
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->rightWidth:F

    return v0
.end method

.method public getTexture()Lcom/badlogic/gdx/graphics/Texture;
    .locals 1

    .prologue
    .line 509
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->texture:Lcom/badlogic/gdx/graphics/Texture;

    return-object v0
.end method

.method public getTopHeight()F
    .locals 1

    .prologue
    .line 396
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->topHeight:F

    return v0
.end method

.method public getTotalHeight()F
    .locals 2

    .prologue
    .line 440
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->topHeight:F

    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->middleHeight:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->bottomHeight:F

    add-float/2addr v0, v1

    return v0
.end method

.method public getTotalWidth()F
    .locals 2

    .prologue
    .line 436
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->leftWidth:F

    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->middleWidth:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->rightWidth:F

    add-float/2addr v0, v1

    return v0
.end method

.method public scale(FF)V
    .locals 1
    .param p1, "scaleX"    # F
    .param p2, "scaleY"    # F

    .prologue
    .line 498
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->leftWidth:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->leftWidth:F

    .line 499
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->rightWidth:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->rightWidth:F

    .line 500
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->topHeight:F

    mul-float/2addr v0, p2

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->topHeight:F

    .line 501
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->bottomHeight:F

    mul-float/2addr v0, p2

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->bottomHeight:F

    .line 502
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->padLeft:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->padLeft:I

    .line 503
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->padRight:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->padRight:I

    .line 504
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->padTop:I

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->padTop:I

    .line 505
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->padBottom:I

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->padBottom:I

    .line 506
    return-void
.end method

.method public setBottomHeight(F)V
    .locals 0
    .param p1, "bottomHeight"    # F

    .prologue
    .line 410
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->bottomHeight:F

    .line 411
    return-void
.end method

.method public setColor(Lcom/badlogic/gdx/graphics/Color;)V
    .locals 1
    .param p1, "color"    # Lcom/badlogic/gdx/graphics/Color;

    .prologue
    .line 370
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->color:Lcom/badlogic/gdx/graphics/Color;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    .line 371
    return-void
.end method

.method public setLeftWidth(F)V
    .locals 0
    .param p1, "leftWidth"    # F

    .prologue
    .line 383
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->leftWidth:F

    .line 384
    return-void
.end method

.method public setMiddleHeight(F)V
    .locals 0
    .param p1, "middleHeight"    # F

    .prologue
    .line 432
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->middleHeight:F

    .line 433
    return-void
.end method

.method public setMiddleWidth(F)V
    .locals 0
    .param p1, "middleWidth"    # F

    .prologue
    .line 421
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->middleWidth:F

    .line 422
    return-void
.end method

.method public setPadBottom(I)V
    .locals 0
    .param p1, "bottom"    # I

    .prologue
    .line 493
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->padBottom:I

    .line 494
    return-void
.end method

.method public setPadLeft(I)V
    .locals 0
    .param p1, "left"    # I

    .prologue
    .line 460
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->padLeft:I

    .line 461
    return-void
.end method

.method public setPadRight(I)V
    .locals 0
    .param p1, "right"    # I

    .prologue
    .line 471
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->padRight:I

    .line 472
    return-void
.end method

.method public setPadTop(I)V
    .locals 0
    .param p1, "top"    # I

    .prologue
    .line 482
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->padTop:I

    .line 483
    return-void
.end method

.method public setPadding(IIII)V
    .locals 0
    .param p1, "left"    # I
    .param p2, "right"    # I
    .param p3, "top"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 446
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->padLeft:I

    .line 447
    iput p2, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->padRight:I

    .line 448
    iput p3, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->padTop:I

    .line 449
    iput p4, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->padBottom:I

    .line 450
    return-void
.end method

.method public setRightWidth(F)V
    .locals 0
    .param p1, "rightWidth"    # F

    .prologue
    .line 392
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->rightWidth:F

    .line 393
    return-void
.end method

.method public setTopHeight(F)V
    .locals 0
    .param p1, "topHeight"    # F

    .prologue
    .line 401
    iput p1, p0, Lcom/badlogic/gdx/graphics/g2d/NinePatch;->topHeight:F

    .line 402
    return-void
.end method
