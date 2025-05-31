.class public final Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;
.super Ljava/lang/Object;
.source "DefaultTextureBinder.java"

# interfaces
.implements Lcom/badlogic/gdx/graphics/g3d/utils/TextureBinder;


# static fields
.field public static final MAX_GLES_UNITS:I = 0x20

.field public static final ROUNDROBIN:I = 0x0

.field public static final WEIGHTED:I = 0x1


# instance fields
.field private bindCount:I

.field private final count:I

.field private currentTexture:I

.field private final method:I

.field private final offset:I

.field private reuseCount:I

.field private final reuseWeight:I

.field private reused:Z

.field private final tempDesc:Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;

.field private final textures:[Lcom/badlogic/gdx/graphics/GLTexture;

.field private final weights:[I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "method"    # I

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;-><init>(II)V

    .line 56
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "method"    # I
    .param p2, "offset"    # I

    .prologue
    .line 60
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;-><init>(III)V

    .line 61
    return-void
.end method

.method public constructor <init>(III)V
    .locals 1
    .param p1, "method"    # I
    .param p2, "offset"    # I
    .param p3, "count"    # I

    .prologue
    .line 65
    const/16 v0, 0xa

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;-><init>(IIII)V

    .line 66
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 4
    .param p1, "method"    # I
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .param p4, "reuseWeight"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->reuseCount:I

    .line 51
    iput v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->bindCount:I

    .line 110
    new-instance v1, Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;

    invoke-direct {v1}, Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;-><init>()V

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->tempDesc:Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;

    .line 147
    iput v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->currentTexture:I

    .line 69
    invoke-static {}, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->getMaxTextureUnits()I

    move-result v1

    const/16 v2, 0x20

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 70
    .local v0, "max":I
    if-gez p3, :cond_0

    sub-int p3, v0, p2

    .line 71
    :cond_0
    if-ltz p2, :cond_1

    if-ltz p3, :cond_1

    add-int v1, p2, p3

    if-gt v1, v0, :cond_1

    if-ge p4, v3, :cond_2

    .line 72
    :cond_1
    new-instance v1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v2, "Illegal arguments"

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 73
    :cond_2
    iput p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->method:I

    .line 74
    iput p2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->offset:I

    .line 75
    iput p3, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->count:I

    .line 76
    new-array v1, p3, [Lcom/badlogic/gdx/graphics/GLTexture;

    iput-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->textures:[Lcom/badlogic/gdx/graphics/GLTexture;

    .line 77
    iput p4, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->reuseWeight:I

    .line 78
    if-ne p1, v3, :cond_3

    new-array v1, p3, [I

    :goto_0
    iput-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->weights:[I

    .line 79
    return-void

    .line 78
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private final bindTexture(Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;Z)I
    .locals 5
    .param p1, "textureDesc"    # Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;
    .param p2, "rebind"    # Z

    .prologue
    .line 120
    iget-object v2, p1, Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;->texture:Lcom/badlogic/gdx/graphics/GLTexture;

    .line 121
    .local v2, "texture":Lcom/badlogic/gdx/graphics/GLTexture;
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->reused:Z

    .line 123
    iget v3, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->method:I

    packed-switch v3, :pswitch_data_0

    .line 131
    const/4 v1, -0x1

    .line 144
    :goto_0
    return v1

    .line 125
    :pswitch_0
    iget v3, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->offset:I

    invoke-direct {p0, v2}, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->bindTextureRoundRobin(Lcom/badlogic/gdx/graphics/GLTexture;)I

    move-result v0

    .local v0, "idx":I
    add-int v1, v3, v0

    .line 134
    .local v1, "result":I
    :goto_1
    iget-boolean v3, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->reused:Z

    if-eqz v3, :cond_1

    .line 135
    iget v3, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->reuseCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->reuseCount:I

    .line 136
    if-eqz p2, :cond_0

    .line 137
    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/graphics/GLTexture;->bind(I)V

    .line 142
    :goto_2
    iget-object v3, p1, Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;->uWrap:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    iget-object v4, p1, Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;->vWrap:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    invoke-virtual {v2, v3, v4}, Lcom/badlogic/gdx/graphics/GLTexture;->unsafeSetWrap(Lcom/badlogic/gdx/graphics/Texture$TextureWrap;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)V

    .line 143
    iget-object v3, p1, Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;->minFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    iget-object v4, p1, Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;->magFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-virtual {v2, v3, v4}, Lcom/badlogic/gdx/graphics/GLTexture;->unsafeSetFilter(Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    goto :goto_0

    .line 128
    .end local v0    # "idx":I
    .end local v1    # "result":I
    :pswitch_1
    iget v3, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->offset:I

    invoke-direct {p0, v2}, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->bindTextureWeighted(Lcom/badlogic/gdx/graphics/GLTexture;)I

    move-result v0

    .restart local v0    # "idx":I
    add-int v1, v3, v0

    .line 129
    .restart local v1    # "result":I
    goto :goto_1

    .line 139
    :cond_0
    sget-object v3, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const v4, 0x84c0

    add-int/2addr v4, v1

    invoke-interface {v3, v4}, Lcom/badlogic/gdx/graphics/GL20;->glActiveTexture(I)V

    goto :goto_2

    .line 141
    :cond_1
    iget v3, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->bindCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->bindCount:I

    goto :goto_2

    .line 123
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private final bindTextureRoundRobin(Lcom/badlogic/gdx/graphics/GLTexture;)I
    .locals 4
    .param p1, "texture"    # Lcom/badlogic/gdx/graphics/GLTexture;

    .prologue
    .line 150
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->count:I

    if-ge v0, v2, :cond_1

    .line 151
    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->currentTexture:I

    add-int/2addr v2, v0

    iget v3, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->count:I

    rem-int v1, v2, v3

    .line 152
    .local v1, "idx":I
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->textures:[Lcom/badlogic/gdx/graphics/GLTexture;

    aget-object v2, v2, v1

    if-ne v2, p1, :cond_0

    .line 153
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->reused:Z

    .line 160
    .end local v1    # "idx":I
    :goto_1
    return v1

    .line 150
    .restart local v1    # "idx":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 157
    .end local v1    # "idx":I
    :cond_1
    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->currentTexture:I

    add-int/lit8 v2, v2, 0x1

    iget v3, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->count:I

    rem-int/2addr v2, v3

    iput v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->currentTexture:I

    .line 158
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->textures:[Lcom/badlogic/gdx/graphics/GLTexture;

    iget v3, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->currentTexture:I

    aput-object p1, v2, v3

    .line 159
    iget v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->offset:I

    iget v3, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->currentTexture:I

    add-int/2addr v2, v3

    invoke-virtual {p1, v2}, Lcom/badlogic/gdx/graphics/GLTexture;->bind(I)V

    .line 160
    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->currentTexture:I

    goto :goto_1
.end method

.method private final bindTextureWeighted(Lcom/badlogic/gdx/graphics/GLTexture;)I
    .locals 7
    .param p1, "texture"    # Lcom/badlogic/gdx/graphics/GLTexture;

    .prologue
    .line 164
    const/4 v1, -0x1

    .line 165
    .local v1, "result":I
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->weights:[I

    const/4 v5, 0x0

    aget v2, v4, v5

    .line 166
    .local v2, "weight":I
    const/4 v3, 0x0

    .line 167
    .local v3, "windex":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v4, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->count:I

    if-ge v0, v4, :cond_3

    .line 168
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->textures:[Lcom/badlogic/gdx/graphics/GLTexture;

    aget-object v4, v4, v0

    if-ne v4, p1, :cond_1

    .line 169
    move v1, v0

    .line 170
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->weights:[I

    aget v5, v4, v0

    iget v6, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->reuseWeight:I

    add-int/2addr v5, v6

    aput v5, v4, v0

    .line 167
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 171
    :cond_1
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->weights:[I

    aget v4, v4, v0

    if-ltz v4, :cond_2

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->weights:[I

    aget v5, v4, v0

    add-int/lit8 v5, v5, -0x1

    aput v5, v4, v0

    if-ge v5, v2, :cond_0

    .line 172
    :cond_2
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->weights:[I

    aget v2, v4, v0

    .line 173
    move v3, v0

    goto :goto_1

    .line 176
    :cond_3
    if-gez v1, :cond_4

    .line 177
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->textures:[Lcom/badlogic/gdx/graphics/GLTexture;

    aput-object p1, v4, v3

    .line 178
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->weights:[I

    const/16 v5, 0x64

    aput v5, v4, v3

    .line 179
    iget v4, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->offset:I

    move v1, v3

    add-int/2addr v4, v3

    invoke-virtual {p1, v4}, Lcom/badlogic/gdx/graphics/GLTexture;->bind(I)V

    .line 182
    :goto_2
    return v1

    .line 181
    :cond_4
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->reused:Z

    goto :goto_2
.end method

.method private static getMaxTextureUnits()I
    .locals 3

    .prologue
    .line 82
    const/16 v1, 0x10

    invoke-static {v1}, Lcom/badlogic/gdx/utils/BufferUtils;->newIntBuffer(I)Ljava/nio/IntBuffer;

    move-result-object v0

    .line 83
    .local v0, "buffer":Ljava/nio/IntBuffer;
    sget-object v1, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const v2, 0x8872

    invoke-interface {v1, v2, v0}, Lcom/badlogic/gdx/graphics/GL20;->glGetIntegerv(ILjava/nio/IntBuffer;)V

    .line 84
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/IntBuffer;->get(I)I

    move-result v1

    return v1
.end method


# virtual methods
.method public begin()V
    .locals 3

    .prologue
    .line 89
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->count:I

    if-ge v0, v1, :cond_1

    .line 90
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->textures:[Lcom/badlogic/gdx/graphics/GLTexture;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 91
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->weights:[I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->weights:[I

    const/4 v2, 0x0

    aput v2, v1, v0

    .line 89
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 93
    :cond_1
    return-void
.end method

.method public final bind(Lcom/badlogic/gdx/graphics/GLTexture;)I
    .locals 6
    .param p1, "texture"    # Lcom/badlogic/gdx/graphics/GLTexture;

    .prologue
    const/4 v2, 0x0

    .line 114
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->tempDesc:Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;->set(Lcom/badlogic/gdx/graphics/GLTexture;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)V

    .line 115
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->tempDesc:Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->bindTexture(Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;Z)I

    move-result v0

    return v0
.end method

.method public final bind(Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;)I
    .locals 1
    .param p1, "textureDesc"    # Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;

    .prologue
    .line 107
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->bindTexture(Lcom/badlogic/gdx/graphics/g3d/utils/TextureDescriptor;Z)I

    move-result v0

    return v0
.end method

.method public end()V
    .locals 2

    .prologue
    .line 102
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    const v1, 0x84c0

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glActiveTexture(I)V

    .line 103
    return-void
.end method

.method public final getBindCount()I
    .locals 1

    .prologue
    .line 187
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->bindCount:I

    return v0
.end method

.method public final getReuseCount()I
    .locals 1

    .prologue
    .line 192
    iget v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->reuseCount:I

    return v0
.end method

.method public final resetCounts()V
    .locals 1

    .prologue
    .line 197
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->reuseCount:I

    iput v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/DefaultTextureBinder;->bindCount:I

    .line 198
    return-void
.end method
