.class public Lcom/badlogic/gdx/maps/tiled/tiles/AnimatedTiledMapTile;
.super Ljava/lang/Object;
.source "AnimatedTiledMapTile.java"

# interfaces
.implements Lcom/badlogic/gdx/maps/tiled/TiledMapTile;


# static fields
.field private static final initialTimeOffset:J

.field private static lastTiledMapRenderTime:J


# instance fields
.field private animationIntervals:[I

.field private blendMode:Lcom/badlogic/gdx/maps/tiled/TiledMapTile$BlendMode;

.field private frameCount:I

.field private frameTiles:[Lcom/badlogic/gdx/maps/tiled/tiles/StaticTiledMapTile;

.field private id:I

.field private loopDuration:I

.field private properties:Lcom/badlogic/gdx/maps/MapProperties;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 31
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/badlogic/gdx/maps/tiled/tiles/AnimatedTiledMapTile;->lastTiledMapRenderTime:J

    .line 44
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v0

    sput-wide v0, Lcom/badlogic/gdx/maps/tiled/tiles/AnimatedTiledMapTile;->initialTimeOffset:J

    return-void
.end method

.method public constructor <init>(FLcom/badlogic/gdx/utils/Array;)V
    .locals 4
    .param p1, "interval"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/maps/tiled/tiles/StaticTiledMapTile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "frameTiles":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/maps/tiled/tiles/StaticTiledMapTile;>;"
    const/high16 v3, 0x447a0000    # 1000.0f

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    sget-object v1, Lcom/badlogic/gdx/maps/tiled/TiledMapTile$BlendMode;->ALPHA:Lcom/badlogic/gdx/maps/tiled/TiledMapTile$BlendMode;

    iput-object v1, p0, Lcom/badlogic/gdx/maps/tiled/tiles/AnimatedTiledMapTile;->blendMode:Lcom/badlogic/gdx/maps/tiled/TiledMapTile$BlendMode;

    .line 42
    const/4 v1, 0x0

    iput v1, p0, Lcom/badlogic/gdx/maps/tiled/tiles/AnimatedTiledMapTile;->frameCount:I

    .line 150
    iget v1, p2, Lcom/badlogic/gdx/utils/Array;->size:I

    new-array v1, v1, [Lcom/badlogic/gdx/maps/tiled/tiles/StaticTiledMapTile;

    iput-object v1, p0, Lcom/badlogic/gdx/maps/tiled/tiles/AnimatedTiledMapTile;->frameTiles:[Lcom/badlogic/gdx/maps/tiled/tiles/StaticTiledMapTile;

    .line 151
    iget v1, p2, Lcom/badlogic/gdx/utils/Array;->size:I

    iput v1, p0, Lcom/badlogic/gdx/maps/tiled/tiles/AnimatedTiledMapTile;->frameCount:I

    .line 153
    iget v1, p2, Lcom/badlogic/gdx/utils/Array;->size:I

    mul-float v2, p1, v3

    float-to-int v2, v2

    mul-int/2addr v1, v2

    iput v1, p0, Lcom/badlogic/gdx/maps/tiled/tiles/AnimatedTiledMapTile;->loopDuration:I

    .line 154
    iget v1, p2, Lcom/badlogic/gdx/utils/Array;->size:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/badlogic/gdx/maps/tiled/tiles/AnimatedTiledMapTile;->animationIntervals:[I

    .line 155
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v1, :cond_0

    .line 156
    iget-object v2, p0, Lcom/badlogic/gdx/maps/tiled/tiles/AnimatedTiledMapTile;->frameTiles:[Lcom/badlogic/gdx/maps/tiled/tiles/StaticTiledMapTile;

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/maps/tiled/tiles/StaticTiledMapTile;

    aput-object v1, v2, v0

    .line 157
    iget-object v1, p0, Lcom/badlogic/gdx/maps/tiled/tiles/AnimatedTiledMapTile;->animationIntervals:[I

    mul-float v2, p1, v3

    float-to-int v2, v2

    aput v2, v1, v0

    .line 155
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 159
    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/utils/IntArray;Lcom/badlogic/gdx/utils/Array;)V
    .locals 3
    .param p1, "intervals"    # Lcom/badlogic/gdx/utils/IntArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/IntArray;",
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/maps/tiled/tiles/StaticTiledMapTile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "frameTiles":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/maps/tiled/tiles/StaticTiledMapTile;>;"
    const/4 v2, 0x0

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    sget-object v1, Lcom/badlogic/gdx/maps/tiled/TiledMapTile$BlendMode;->ALPHA:Lcom/badlogic/gdx/maps/tiled/TiledMapTile$BlendMode;

    iput-object v1, p0, Lcom/badlogic/gdx/maps/tiled/tiles/AnimatedTiledMapTile;->blendMode:Lcom/badlogic/gdx/maps/tiled/TiledMapTile$BlendMode;

    .line 42
    iput v2, p0, Lcom/badlogic/gdx/maps/tiled/tiles/AnimatedTiledMapTile;->frameCount:I

    .line 166
    iget v1, p2, Lcom/badlogic/gdx/utils/Array;->size:I

    new-array v1, v1, [Lcom/badlogic/gdx/maps/tiled/tiles/StaticTiledMapTile;

    iput-object v1, p0, Lcom/badlogic/gdx/maps/tiled/tiles/AnimatedTiledMapTile;->frameTiles:[Lcom/badlogic/gdx/maps/tiled/tiles/StaticTiledMapTile;

    .line 167
    iget v1, p2, Lcom/badlogic/gdx/utils/Array;->size:I

    iput v1, p0, Lcom/badlogic/gdx/maps/tiled/tiles/AnimatedTiledMapTile;->frameCount:I

    .line 169
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/IntArray;->toArray()[I

    move-result-object v1

    iput-object v1, p0, Lcom/badlogic/gdx/maps/tiled/tiles/AnimatedTiledMapTile;->animationIntervals:[I

    .line 170
    iput v2, p0, Lcom/badlogic/gdx/maps/tiled/tiles/AnimatedTiledMapTile;->loopDuration:I

    .line 172
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p1, Lcom/badlogic/gdx/utils/IntArray;->size:I

    if-ge v0, v1, :cond_0

    .line 173
    iget-object v2, p0, Lcom/badlogic/gdx/maps/tiled/tiles/AnimatedTiledMapTile;->frameTiles:[Lcom/badlogic/gdx/maps/tiled/tiles/StaticTiledMapTile;

    invoke-virtual {p2, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/maps/tiled/tiles/StaticTiledMapTile;

    aput-object v1, v2, v0

    .line 174
    iget v1, p0, Lcom/badlogic/gdx/maps/tiled/tiles/AnimatedTiledMapTile;->loopDuration:I

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/utils/IntArray;->get(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/badlogic/gdx/maps/tiled/tiles/AnimatedTiledMapTile;->loopDuration:I

    .line 172
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 176
    :cond_0
    return-void
.end method

.method public static updateAnimationBaseTime()V
    .locals 4

    .prologue
    .line 142
    invoke-static {}, Lcom/badlogic/gdx/utils/TimeUtils;->millis()J

    move-result-wide v0

    sget-wide v2, Lcom/badlogic/gdx/maps/tiled/tiles/AnimatedTiledMapTile;->initialTimeOffset:J

    sub-long/2addr v0, v2

    sput-wide v0, Lcom/badlogic/gdx/maps/tiled/tiles/AnimatedTiledMapTile;->lastTiledMapRenderTime:J

    .line 143
    return-void
.end method


# virtual methods
.method public getAnimationIntervals()[I
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/badlogic/gdx/maps/tiled/tiles/AnimatedTiledMapTile;->animationIntervals:[I

    return-object v0
.end method

.method public getBlendMode()Lcom/badlogic/gdx/maps/tiled/TiledMapTile$BlendMode;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/badlogic/gdx/maps/tiled/tiles/AnimatedTiledMapTile;->blendMode:Lcom/badlogic/gdx/maps/tiled/TiledMapTile$BlendMode;

    return-object v0
.end method

.method public getCurrentFrame()Lcom/badlogic/gdx/maps/tiled/TiledMapTile;
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/badlogic/gdx/maps/tiled/tiles/AnimatedTiledMapTile;->frameTiles:[Lcom/badlogic/gdx/maps/tiled/tiles/StaticTiledMapTile;

    invoke-virtual {p0}, Lcom/badlogic/gdx/maps/tiled/tiles/AnimatedTiledMapTile;->getCurrentFrameIndex()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getCurrentFrameIndex()I
    .locals 8

    .prologue
    .line 67
    sget-wide v4, Lcom/badlogic/gdx/maps/tiled/tiles/AnimatedTiledMapTile;->lastTiledMapRenderTime:J

    iget v3, p0, Lcom/badlogic/gdx/maps/tiled/tiles/AnimatedTiledMapTile;->loopDuration:I

    int-to-long v6, v3

    rem-long/2addr v4, v6

    long-to-int v1, v4

    .line 69
    .local v1, "currentTime":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/badlogic/gdx/maps/tiled/tiles/AnimatedTiledMapTile;->animationIntervals:[I

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 70
    iget-object v3, p0, Lcom/badlogic/gdx/maps/tiled/tiles/AnimatedTiledMapTile;->animationIntervals:[I

    aget v0, v3, v2

    .line 71
    .local v0, "animationInterval":I
    if-gt v1, v0, :cond_0

    return v2

    .line 72
    :cond_0
    sub-int/2addr v1, v0

    .line 69
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 75
    .end local v0    # "animationInterval":I
    :cond_1
    new-instance v3, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v4, "Could not determine current animation frame in AnimatedTiledMapTile.  This should never happen."

    invoke-direct {v3, v4}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/badlogic/gdx/maps/tiled/tiles/AnimatedTiledMapTile;->id:I

    return v0
.end method

.method public getOffsetX()F
    .locals 1

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/badlogic/gdx/maps/tiled/tiles/AnimatedTiledMapTile;->getCurrentFrame()Lcom/badlogic/gdx/maps/tiled/TiledMapTile;

    move-result-object v0

    invoke-interface {v0}, Lcom/badlogic/gdx/maps/tiled/TiledMapTile;->getOffsetX()F

    move-result v0

    return v0
.end method

.method public getOffsetY()F
    .locals 1

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/badlogic/gdx/maps/tiled/tiles/AnimatedTiledMapTile;->getCurrentFrame()Lcom/badlogic/gdx/maps/tiled/TiledMapTile;

    move-result-object v0

    invoke-interface {v0}, Lcom/badlogic/gdx/maps/tiled/TiledMapTile;->getOffsetY()F

    move-result v0

    return v0
.end method

.method public getProperties()Lcom/badlogic/gdx/maps/MapProperties;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/badlogic/gdx/maps/tiled/tiles/AnimatedTiledMapTile;->properties:Lcom/badlogic/gdx/maps/MapProperties;

    if-nez v0, :cond_0

    .line 134
    new-instance v0, Lcom/badlogic/gdx/maps/MapProperties;

    invoke-direct {v0}, Lcom/badlogic/gdx/maps/MapProperties;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/maps/tiled/tiles/AnimatedTiledMapTile;->properties:Lcom/badlogic/gdx/maps/MapProperties;

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/maps/tiled/tiles/AnimatedTiledMapTile;->properties:Lcom/badlogic/gdx/maps/MapProperties;

    return-object v0
.end method

.method public getTextureRegion()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .locals 1

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/badlogic/gdx/maps/tiled/tiles/AnimatedTiledMapTile;->getCurrentFrame()Lcom/badlogic/gdx/maps/tiled/TiledMapTile;

    move-result-object v0

    invoke-interface {v0}, Lcom/badlogic/gdx/maps/tiled/TiledMapTile;->getTextureRegion()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    move-result-object v0

    return-object v0
.end method

.method public setAnimationIntervals([I)V
    .locals 4
    .param p1, "intervals"    # [I

    .prologue
    .line 117
    array-length v1, p1

    iget-object v2, p0, Lcom/badlogic/gdx/maps/tiled/tiles/AnimatedTiledMapTile;->animationIntervals:[I

    array-length v2, v2

    if-ne v1, v2, :cond_0

    .line 118
    iput-object p1, p0, Lcom/badlogic/gdx/maps/tiled/tiles/AnimatedTiledMapTile;->animationIntervals:[I

    .line 120
    const/4 v1, 0x0

    iput v1, p0, Lcom/badlogic/gdx/maps/tiled/tiles/AnimatedTiledMapTile;->loopDuration:I

    .line 121
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 122
    iget v1, p0, Lcom/badlogic/gdx/maps/tiled/tiles/AnimatedTiledMapTile;->loopDuration:I

    aget v2, p1, v0

    add-int/2addr v1, v2

    iput v1, p0, Lcom/badlogic/gdx/maps/tiled/tiles/AnimatedTiledMapTile;->loopDuration:I

    .line 121
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 126
    .end local v0    # "i":I
    :cond_0
    new-instance v1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot set "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " frame intervals. The given int[] must have a size of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/badlogic/gdx/maps/tiled/tiles/AnimatedTiledMapTile;->animationIntervals:[I

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 129
    .restart local v0    # "i":I
    :cond_1
    return-void
.end method

.method public setBlendMode(Lcom/badlogic/gdx/maps/tiled/TiledMapTile$BlendMode;)V
    .locals 0
    .param p1, "blendMode"    # Lcom/badlogic/gdx/maps/tiled/TiledMapTile$BlendMode;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/badlogic/gdx/maps/tiled/tiles/AnimatedTiledMapTile;->blendMode:Lcom/badlogic/gdx/maps/tiled/TiledMapTile$BlendMode;

    .line 64
    return-void
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 53
    iput p1, p0, Lcom/badlogic/gdx/maps/tiled/tiles/AnimatedTiledMapTile;->id:I

    .line 54
    return-void
.end method

.method public setOffsetX(F)V
    .locals 2
    .param p1, "offsetX"    # F

    .prologue
    .line 99
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "Cannot set offset of AnimatedTiledMapTile."

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setOffsetY(F)V
    .locals 2
    .param p1, "offsetY"    # F

    .prologue
    .line 109
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "Cannot set offset of AnimatedTiledMapTile."

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setTextureRegion(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V
    .locals 2
    .param p1, "textureRegion"    # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .prologue
    .line 89
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "Cannot set the texture region of AnimatedTiledMapTile."

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
