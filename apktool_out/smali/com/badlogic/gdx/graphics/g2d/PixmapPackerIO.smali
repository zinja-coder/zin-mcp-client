.class public Lcom/badlogic/gdx/graphics/g2d/PixmapPackerIO;
.super Ljava/lang/Object;
.source "PixmapPackerIO.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/graphics/g2d/PixmapPackerIO$1;,
        Lcom/badlogic/gdx/graphics/g2d/PixmapPackerIO$SaveParameters;,
        Lcom/badlogic/gdx/graphics/g2d/PixmapPackerIO$ImageFormat;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method


# virtual methods
.method public save(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;)V
    .locals 1
    .param p1, "file"    # Lcom/badlogic/gdx/files/FileHandle;
    .param p2, "packer"    # Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 50
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/PixmapPackerIO$SaveParameters;

    invoke-direct {v0}, Lcom/badlogic/gdx/graphics/g2d/PixmapPackerIO$SaveParameters;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Lcom/badlogic/gdx/graphics/g2d/PixmapPackerIO;->save(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;Lcom/badlogic/gdx/graphics/g2d/PixmapPackerIO$SaveParameters;)V

    .line 51
    return-void
.end method

.method public save(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;Lcom/badlogic/gdx/graphics/g2d/PixmapPackerIO$SaveParameters;)V
    .locals 10
    .param p1, "file"    # Lcom/badlogic/gdx/files/FileHandle;
    .param p2, "packer"    # Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;
    .param p3, "parameters"    # Lcom/badlogic/gdx/graphics/g2d/PixmapPackerIO$SaveParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 61
    const/4 v8, 0x0

    invoke-virtual {p1, v8}, Lcom/badlogic/gdx/files/FileHandle;->writer(Z)Ljava/io/Writer;

    move-result-object v7

    .line 62
    .local v7, "writer":Ljava/io/Writer;
    const/4 v2, 0x0

    .line 63
    .local v2, "index":I
    iget-object v8, p2, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->pages:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v8}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;

    .line 64
    .local v4, "page":Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;
    iget-object v8, v4, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->rects:Lcom/badlogic/gdx/utils/OrderedMap;

    iget v8, v8, Lcom/badlogic/gdx/utils/OrderedMap;->size:I

    if-lez v8, :cond_0

    .line 65
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/badlogic/gdx/files/FileHandle;->nameWithoutExtension()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p3, Lcom/badlogic/gdx/graphics/g2d/PixmapPackerIO$SaveParameters;->format:Lcom/badlogic/gdx/graphics/g2d/PixmapPackerIO$ImageFormat;

    invoke-virtual {v9}, Lcom/badlogic/gdx/graphics/g2d/PixmapPackerIO$ImageFormat;->getExtension()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Lcom/badlogic/gdx/files/FileHandle;->sibling(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v5

    .line 66
    .local v5, "pageFile":Lcom/badlogic/gdx/files/FileHandle;
    sget-object v8, Lcom/badlogic/gdx/graphics/g2d/PixmapPackerIO$1;->$SwitchMap$com$badlogic$gdx$graphics$g2d$PixmapPackerIO$ImageFormat:[I

    iget-object v9, p3, Lcom/badlogic/gdx/graphics/g2d/PixmapPackerIO$SaveParameters;->format:Lcom/badlogic/gdx/graphics/g2d/PixmapPackerIO$ImageFormat;

    invoke-virtual {v9}, Lcom/badlogic/gdx/graphics/g2d/PixmapPackerIO$ImageFormat;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_0

    .line 76
    :goto_0
    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 77
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/badlogic/gdx/files/FileHandle;->name()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 78
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "size: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v4, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->image:Lcom/badlogic/gdx/graphics/Pixmap;

    invoke-virtual {v9}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v4, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->image:Lcom/badlogic/gdx/graphics/Pixmap;

    invoke-virtual {v9}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 79
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "format: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p2, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker;->pageFormat:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    invoke-virtual {v9}, Lcom/badlogic/gdx/graphics/Pixmap$Format;->name()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 80
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "filter: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p3, Lcom/badlogic/gdx/graphics/g2d/PixmapPackerIO$SaveParameters;->minFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-virtual {v9}, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->name()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p3, Lcom/badlogic/gdx/graphics/g2d/PixmapPackerIO$SaveParameters;->magFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-virtual {v9}, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->name()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 81
    const-string v8, "repeat: none\n"

    invoke-virtual {v7, v8}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 82
    iget-object v8, v4, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->rects:Lcom/badlogic/gdx/utils/OrderedMap;

    invoke-virtual {v8}, Lcom/badlogic/gdx/utils/OrderedMap;->keys()Lcom/badlogic/gdx/utils/ObjectMap$Keys;

    move-result-object v8

    invoke-virtual {v8}, Lcom/badlogic/gdx/utils/ObjectMap$Keys;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 83
    .local v3, "name":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 84
    iget-object v8, v4, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->rects:Lcom/badlogic/gdx/utils/OrderedMap;

    invoke-virtual {v8, v3}, Lcom/badlogic/gdx/utils/OrderedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/badlogic/gdx/math/Rectangle;

    .line 85
    .local v6, "rect":Lcom/badlogic/gdx/math/Rectangle;
    const-string v8, "rotate: false\n"

    invoke-virtual {v7, v8}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 86
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "xy: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v6, Lcom/badlogic/gdx/math/Rectangle;->x:F

    float-to-int v9, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v6, Lcom/badlogic/gdx/math/Rectangle;->y:F

    float-to-int v9, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 87
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "size: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v6, Lcom/badlogic/gdx/math/Rectangle;->width:F

    float-to-int v9, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v6, Lcom/badlogic/gdx/math/Rectangle;->height:F

    float-to-int v9, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 88
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "orig: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v6, Lcom/badlogic/gdx/math/Rectangle;->width:F

    float-to-int v9, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v6, Lcom/badlogic/gdx/math/Rectangle;->height:F

    float-to-int v9, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 89
    const-string v8, "offset: 0, 0\n"

    invoke-virtual {v7, v8}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 90
    const-string v8, "index: -1\n"

    invoke-virtual {v7, v8}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 68
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "name":Ljava/lang/String;
    .end local v6    # "rect":Lcom/badlogic/gdx/math/Rectangle;
    :pswitch_0
    iget-object v8, v4, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->image:Lcom/badlogic/gdx/graphics/Pixmap;

    invoke-static {v5, v8}, Lcom/badlogic/gdx/graphics/PixmapIO;->writeCIM(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/Pixmap;)V

    goto/16 :goto_0

    .line 72
    :pswitch_1
    iget-object v8, v4, Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;->image:Lcom/badlogic/gdx/graphics/Pixmap;

    invoke-static {v5, v8}, Lcom/badlogic/gdx/graphics/PixmapIO;->writePNG(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/Pixmap;)V

    goto/16 :goto_0

    .line 94
    .end local v4    # "page":Lcom/badlogic/gdx/graphics/g2d/PixmapPacker$Page;
    .end local v5    # "pageFile":Lcom/badlogic/gdx/files/FileHandle;
    :cond_1
    invoke-virtual {v7}, Ljava/io/Writer;->close()V

    .line 95
    return-void

    .line 66
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
