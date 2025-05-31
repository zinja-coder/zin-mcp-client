.class public Lcom/badlogic/gdx/graphics/PixmapIO;
.super Ljava/lang/Object;
.source "PixmapIO.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/graphics/PixmapIO$PNG;,
        Lcom/badlogic/gdx/graphics/PixmapIO$CIM;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    return-void
.end method

.method public static readCIM(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/graphics/Pixmap;
    .locals 1
    .param p0, "file"    # Lcom/badlogic/gdx/files/FileHandle;

    .prologue
    .line 55
    invoke-static {p0}, Lcom/badlogic/gdx/graphics/PixmapIO$CIM;->read(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/graphics/Pixmap;

    move-result-object v0

    return-object v0
.end method

.method public static writeCIM(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/Pixmap;)V
    .locals 0
    .param p0, "file"    # Lcom/badlogic/gdx/files/FileHandle;
    .param p1, "pixmap"    # Lcom/badlogic/gdx/graphics/Pixmap;

    .prologue
    .line 48
    invoke-static {p0, p1}, Lcom/badlogic/gdx/graphics/PixmapIO$CIM;->write(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/Pixmap;)V

    .line 49
    return-void
.end method

.method public static writePNG(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/Pixmap;)V
    .locals 5
    .param p0, "file"    # Lcom/badlogic/gdx/files/FileHandle;
    .param p1, "pixmap"    # Lcom/badlogic/gdx/graphics/Pixmap;

    .prologue
    .line 62
    :try_start_0
    new-instance v1, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Lcom/badlogic/gdx/graphics/Pixmap;->getHeight()I

    move-result v3

    mul-int/2addr v2, v3

    int-to-float v2, v2

    const/high16 v3, 0x3fc00000    # 1.5f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;-><init>(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    .local v1, "writer":Lcom/badlogic/gdx/graphics/PixmapIO$PNG;
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->setFlipY(Z)V

    .line 65
    invoke-virtual {v1, p0, p1}, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->write(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/Pixmap;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 67
    :try_start_2
    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->dispose()V

    .line 72
    return-void

    .line 67
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/PixmapIO$PNG;->dispose()V

    throw v2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 69
    .end local v1    # "writer":Lcom/badlogic/gdx/graphics/PixmapIO$PNG;
    :catch_0
    move-exception v0

    .line 70
    .local v0, "ex":Ljava/io/IOException;
    new-instance v2, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error writing PNG: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method
