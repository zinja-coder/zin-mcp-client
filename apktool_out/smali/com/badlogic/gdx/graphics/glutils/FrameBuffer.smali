.class public Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;
.super Ljava/lang/Object;
.source "FrameBuffer.java"

# interfaces
.implements Lcom/badlogic/gdx/utils/Disposable;


# static fields
.field private static final buffers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/badlogic/gdx/Application;",
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;",
            ">;>;"
        }
    .end annotation
.end field

.field private static defaultFramebufferHandle:I

.field private static defaultFramebufferHandleInitialized:Z


# instance fields
.field protected colorTexture:Lcom/badlogic/gdx/graphics/Texture;

.field private depthbufferHandle:I

.field protected final format:Lcom/badlogic/gdx/graphics/Pixmap$Format;

.field private framebufferHandle:I

.field protected final hasDepth:Z

.field protected final hasStencil:Z

.field protected final height:I

.field private stencilbufferHandle:I

.field protected final width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->buffers:Ljava/util/Map;

    .line 63
    const/4 v0, 0x0

    sput-boolean v0, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->defaultFramebufferHandleInitialized:Z

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/Pixmap$Format;IIZ)V
    .locals 6
    .param p1, "format"    # Lcom/badlogic/gdx/graphics/Pixmap$Format;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "hasDepth"    # Z

    .prologue
    .line 98
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;-><init>(Lcom/badlogic/gdx/graphics/Pixmap$Format;IIZZ)V

    .line 99
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/Pixmap$Format;IIZZ)V
    .locals 1
    .param p1, "format"    # Lcom/badlogic/gdx/graphics/Pixmap$Format;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "hasDepth"    # Z
    .param p5, "hasStencil"    # Z

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput p2, p0, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->width:I

    .line 112
    iput p3, p0, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->height:I

    .line 113
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->format:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    .line 114
    iput-boolean p4, p0, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->hasDepth:Z

    .line 115
    iput-boolean p5, p0, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->hasStencil:Z

    .line 116
    invoke-direct {p0}, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->build()V

    .line 118
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-static {v0, p0}, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->addManagedFrameBuffer(Lcom/badlogic/gdx/Application;Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;)V

    .line 119
    return-void
.end method

.method private static addManagedFrameBuffer(Lcom/badlogic/gdx/Application;Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;)V
    .locals 2
    .param p0, "app"    # Lcom/badlogic/gdx/Application;
    .param p1, "frameBuffer"    # Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;

    .prologue
    .line 286
    sget-object v1, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->buffers:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/Array;

    .line 287
    .local v0, "managedResources":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;>;"
    if-nez v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    .end local v0    # "managedResources":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;>;"
    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    .line 288
    .restart local v0    # "managedResources":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;>;"
    :cond_0
    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 289
    sget-object v1, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->buffers:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    return-void
.end method

.method private build()V
    .locals 10

    .prologue
    const/16 v3, 0xde1

    const/4 v5, 0x0

    const v1, 0x8d40

    const v9, 0x8d41

    .line 129
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 132
    .local v0, "gl":Lcom/badlogic/gdx/graphics/GL20;
    sget-boolean v2, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->defaultFramebufferHandleInitialized:Z

    if-nez v2, :cond_0

    .line 133
    const/4 v2, 0x1

    sput-boolean v2, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->defaultFramebufferHandleInitialized:Z

    .line 134
    sget-object v2, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v2}, Lcom/badlogic/gdx/Application;->getType()Lcom/badlogic/gdx/Application$ApplicationType;

    move-result-object v2

    sget-object v4, Lcom/badlogic/gdx/Application$ApplicationType;->iOS:Lcom/badlogic/gdx/Application$ApplicationType;

    if-ne v2, v4, :cond_9

    .line 135
    const/16 v2, 0x40

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v6

    .line 136
    .local v6, "intbuf":Ljava/nio/IntBuffer;
    const v2, 0x8ca6

    invoke-interface {v0, v2, v6}, Lcom/badlogic/gdx/graphics/GL20;->glGetIntegerv(ILjava/nio/IntBuffer;)V

    .line 137
    invoke-virtual {v6, v5}, Ljava/nio/IntBuffer;->get(I)I

    move-result v2

    sput v2, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->defaultFramebufferHandle:I

    .line 143
    .end local v6    # "intbuf":Ljava/nio/IntBuffer;
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->setupTexture()V

    .line 146
    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/GL20;->glGenFramebuffer()I

    move-result v2

    iput v2, p0, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->framebufferHandle:I

    .line 148
    iget-boolean v2, p0, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->hasDepth:Z

    if-eqz v2, :cond_1

    .line 149
    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/GL20;->glGenRenderbuffer()I

    move-result v2

    iput v2, p0, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->depthbufferHandle:I

    .line 152
    :cond_1
    iget-boolean v2, p0, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->hasStencil:Z

    if-eqz v2, :cond_2

    .line 153
    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/GL20;->glGenRenderbuffer()I

    move-result v2

    iput v2, p0, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->stencilbufferHandle:I

    .line 156
    :cond_2
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->colorTexture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/Texture;->getTextureObjectHandle()I

    move-result v2

    invoke-interface {v0, v3, v2}, Lcom/badlogic/gdx/graphics/GL20;->glBindTexture(II)V

    .line 158
    iget-boolean v2, p0, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->hasDepth:Z

    if-eqz v2, :cond_3

    .line 159
    iget v2, p0, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->depthbufferHandle:I

    invoke-interface {v0, v9, v2}, Lcom/badlogic/gdx/graphics/GL20;->glBindRenderbuffer(II)V

    .line 160
    const v2, 0x81a5

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->colorTexture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/Texture;->getWidth()I

    move-result v4

    iget-object v8, p0, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->colorTexture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v8}, Lcom/badlogic/gdx/graphics/Texture;->getHeight()I

    move-result v8

    invoke-interface {v0, v9, v2, v4, v8}, Lcom/badlogic/gdx/graphics/GL20;->glRenderbufferStorage(IIII)V

    .line 164
    :cond_3
    iget-boolean v2, p0, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->hasStencil:Z

    if-eqz v2, :cond_4

    .line 165
    iget v2, p0, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->stencilbufferHandle:I

    invoke-interface {v0, v9, v2}, Lcom/badlogic/gdx/graphics/GL20;->glBindRenderbuffer(II)V

    .line 166
    const v2, 0x8d48

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->colorTexture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/Texture;->getWidth()I

    move-result v4

    iget-object v8, p0, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->colorTexture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v8}, Lcom/badlogic/gdx/graphics/Texture;->getHeight()I

    move-result v8

    invoke-interface {v0, v9, v2, v4, v8}, Lcom/badlogic/gdx/graphics/GL20;->glRenderbufferStorage(IIII)V

    .line 169
    :cond_4
    iget v2, p0, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->framebufferHandle:I

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/graphics/GL20;->glBindFramebuffer(II)V

    .line 170
    const v2, 0x8ce0

    iget-object v4, p0, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->colorTexture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/Texture;->getTextureObjectHandle()I

    move-result v4

    invoke-interface/range {v0 .. v5}, Lcom/badlogic/gdx/graphics/GL20;->glFramebufferTexture2D(IIIII)V

    .line 172
    iget-boolean v2, p0, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->hasDepth:Z

    if-eqz v2, :cond_5

    .line 173
    const v2, 0x8d00

    iget v4, p0, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->depthbufferHandle:I

    invoke-interface {v0, v1, v2, v9, v4}, Lcom/badlogic/gdx/graphics/GL20;->glFramebufferRenderbuffer(IIII)V

    .line 176
    :cond_5
    iget-boolean v2, p0, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->hasStencil:Z

    if-eqz v2, :cond_6

    .line 177
    const v2, 0x8d20

    iget v4, p0, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->stencilbufferHandle:I

    invoke-interface {v0, v1, v2, v9, v4}, Lcom/badlogic/gdx/graphics/GL20;->glFramebufferRenderbuffer(IIII)V

    .line 180
    :cond_6
    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glCheckFramebufferStatus(I)I

    move-result v7

    .line 182
    .local v7, "result":I
    invoke-interface {v0, v9, v5}, Lcom/badlogic/gdx/graphics/GL20;->glBindRenderbuffer(II)V

    .line 183
    invoke-interface {v0, v3, v5}, Lcom/badlogic/gdx/graphics/GL20;->glBindTexture(II)V

    .line 184
    sget v2, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->defaultFramebufferHandle:I

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/graphics/GL20;->glBindFramebuffer(II)V

    .line 186
    const v1, 0x8cd5

    if-eq v7, v1, :cond_e

    .line 187
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->colorTexture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Texture;->dispose()V

    .line 189
    iget-boolean v1, p0, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->hasDepth:Z

    if-eqz v1, :cond_7

    .line 190
    iget v1, p0, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->depthbufferHandle:I

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glDeleteRenderbuffer(I)V

    .line 192
    :cond_7
    iget-boolean v1, p0, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->hasStencil:Z

    if-eqz v1, :cond_8

    .line 193
    iget v1, p0, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->stencilbufferHandle:I

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glDeleteRenderbuffer(I)V

    .line 195
    :cond_8
    iget v1, p0, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->framebufferHandle:I

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/graphics/GL20;->glDeleteFramebuffer(I)V

    .line 197
    const v1, 0x8cd6

    if-ne v7, v1, :cond_a

    .line 198
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "frame buffer couldn\'t be constructed: incomplete attachment"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 139
    .end local v7    # "result":I
    :cond_9
    sput v5, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->defaultFramebufferHandle:I

    goto/16 :goto_0

    .line 199
    .restart local v7    # "result":I
    :cond_a
    const v1, 0x8cd9

    if-ne v7, v1, :cond_b

    .line 200
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "frame buffer couldn\'t be constructed: incomplete dimensions"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 201
    :cond_b
    const v1, 0x8cd7

    if-ne v7, v1, :cond_c

    .line 202
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "frame buffer couldn\'t be constructed: missing attachment"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 203
    :cond_c
    const v1, 0x8cdd

    if-ne v7, v1, :cond_d

    .line 204
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "frame buffer couldn\'t be constructed: unsupported combination of formats"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 205
    :cond_d
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "frame buffer couldn\'t be constructed: unknown error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 207
    :cond_e
    return-void
.end method

.method public static clearAllFrameBuffers(Lcom/badlogic/gdx/Application;)V
    .locals 1
    .param p0, "app"    # Lcom/badlogic/gdx/Application;

    .prologue
    .line 305
    sget-object v0, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->buffers:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    return-void
.end method

.method public static getManagedStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 319
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->getManagedStatus(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getManagedStatus(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 3
    .param p0, "builder"    # Ljava/lang/StringBuilder;

    .prologue
    .line 309
    const-string v2, "Managed buffers/app: { "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    sget-object v2, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->buffers:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/Application;

    .line 311
    .local v0, "app":Lcom/badlogic/gdx/Application;
    sget-object v2, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->buffers:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/utils/Array;

    iget v2, v2, Lcom/badlogic/gdx/utils/Array;->size:I

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 312
    const-string v2, " "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 314
    .end local v0    # "app":Lcom/badlogic/gdx/Application;
    :cond_0
    const-string v2, "}"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    return-object p0
.end method

.method public static invalidateAllFrameBuffers(Lcom/badlogic/gdx/Application;)V
    .locals 3
    .param p0, "app"    # Lcom/badlogic/gdx/Application;

    .prologue
    .line 295
    sget-object v2, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    if-nez v2, :cond_1

    .line 302
    :cond_0
    return-void

    .line 297
    :cond_1
    sget-object v2, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->buffers:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/Array;

    .line 298
    .local v0, "bufferArray":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;>;"
    if-eqz v0, :cond_0

    .line 299
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v1, v2, :cond_0

    .line 300
    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;

    invoke-direct {v2}, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->build()V

    .line 299
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static unbind()V
    .locals 3

    .prologue
    .line 234
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    const v1, 0x8d40

    sget v2, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->defaultFramebufferHandle:I

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/graphics/GL20;->glBindFramebuffer(II)V

    .line 235
    return-void
.end method


# virtual methods
.method public begin()V
    .locals 0

    .prologue
    .line 239
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->bind()V

    .line 240
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->setFrameBufferViewport()V

    .line 241
    return-void
.end method

.method public bind()V
    .locals 3

    .prologue
    .line 229
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    const v1, 0x8d40

    iget v2, p0, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->framebufferHandle:I

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/graphics/GL20;->glBindFramebuffer(II)V

    .line 230
    return-void
.end method

.method public dispose()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 211
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    .line 213
    .local v0, "gl":Lcom/badlogic/gdx/graphics/GL20;
    invoke-static {v4}, Lcom/badlogic/gdx/utils/BufferUtils;->newIntBuffer(I)Ljava/nio/IntBuffer;

    move-result-object v1

    .line 215
    .local v1, "handle":Ljava/nio/IntBuffer;
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->colorTexture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/Texture;->dispose()V

    .line 216
    iget-boolean v2, p0, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->hasDepth:Z

    if-eqz v2, :cond_0

    .line 217
    iget v2, p0, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->depthbufferHandle:I

    invoke-interface {v0, v2}, Lcom/badlogic/gdx/graphics/GL20;->glDeleteRenderbuffer(I)V

    .line 219
    :cond_0
    iget-boolean v2, p0, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->hasStencil:Z

    if-eqz v2, :cond_1

    .line 220
    iget v2, p0, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->stencilbufferHandle:I

    invoke-interface {v0, v2}, Lcom/badlogic/gdx/graphics/GL20;->glDeleteRenderbuffer(I)V

    .line 222
    :cond_1
    iget v2, p0, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->framebufferHandle:I

    invoke-interface {v0, v2}, Lcom/badlogic/gdx/graphics/GL20;->glDeleteFramebuffer(I)V

    .line 224
    sget-object v2, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->buffers:Ljava/util/Map;

    sget-object v3, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->buffers:Ljava/util/Map;

    sget-object v3, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, p0, v4}, Lcom/badlogic/gdx/utils/Array;->removeValue(Ljava/lang/Object;Z)Z

    .line 225
    :cond_2
    return-void
.end method

.method public end()V
    .locals 0

    .prologue
    .line 250
    invoke-static {}, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->unbind()V

    .line 251
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->setDefaultFrameBufferViewport()V

    .line 252
    return-void
.end method

.method public end(IIII)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 266
    invoke-static {}, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->unbind()V

    .line 267
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/GL20;->glViewport(IIII)V

    .line 268
    return-void
.end method

.method public getColorBufferTexture()Lcom/badlogic/gdx/graphics/Texture;
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->colorTexture:Lcom/badlogic/gdx/graphics/Texture;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->colorTexture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Texture;->getHeight()I

    move-result v0

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->colorTexture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Texture;->getWidth()I

    move-result v0

    return v0
.end method

.method protected setDefaultFrameBufferViewport()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 256
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    sget-object v1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v1}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v1

    sget-object v2, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v2}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v2

    invoke-interface {v0, v3, v3, v1, v2}, Lcom/badlogic/gdx/graphics/GL20;->glViewport(IIII)V

    .line 257
    return-void
.end method

.method protected setFrameBufferViewport()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 245
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl20:Lcom/badlogic/gdx/graphics/GL20;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->colorTexture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Texture;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->colorTexture:Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/Texture;->getHeight()I

    move-result v2

    invoke-interface {v0, v3, v3, v1, v2}, Lcom/badlogic/gdx/graphics/GL20;->glViewport(IIII)V

    .line 246
    return-void
.end method

.method protected setupTexture()V
    .locals 4

    .prologue
    .line 123
    new-instance v0, Lcom/badlogic/gdx/graphics/Texture;

    iget v1, p0, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->width:I

    iget v2, p0, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->height:I

    iget-object v3, p0, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->format:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    invoke-direct {v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/Texture;-><init>(IILcom/badlogic/gdx/graphics/Pixmap$Format;)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->colorTexture:Lcom/badlogic/gdx/graphics/Texture;

    .line 124
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->colorTexture:Lcom/badlogic/gdx/graphics/Texture;

    sget-object v1, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    sget-object v2, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/graphics/Texture;->setFilter(Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    .line 125
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/glutils/FrameBuffer;->colorTexture:Lcom/badlogic/gdx/graphics/Texture;

    sget-object v1, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->ClampToEdge:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    sget-object v2, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->ClampToEdge:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/graphics/Texture;->setWrap(Lcom/badlogic/gdx/graphics/Texture$TextureWrap;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)V

    .line 126
    return-void
.end method
