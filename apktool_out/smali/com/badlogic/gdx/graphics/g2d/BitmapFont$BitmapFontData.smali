.class public Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;
.super Ljava/lang/Object;
.source "BitmapFont.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/g2d/BitmapFont;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BitmapFontData"
.end annotation


# instance fields
.field public ascent:F

.field public capHeight:F

.field public descent:F

.field public down:F

.field public flipped:Z

.field public fontFile:Lcom/badlogic/gdx/files/FileHandle;

.field public final glyphs:[[Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

.field public imagePath:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public imagePaths:[Ljava/lang/String;

.field public lineHeight:F

.field public scaleX:F

.field public scaleY:F

.field public spaceWidth:F

.field public xHeight:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 846
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 835
    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->capHeight:F

    .line 839
    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->scaleX:F

    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->scaleY:F

    .line 841
    const/16 v0, 0x80

    new-array v0, v0, [[Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->glyphs:[[Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    .line 843
    iput v1, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->xHeight:F

    .line 847
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/files/FileHandle;Z)V
    .locals 36
    .param p1, "fontFile"    # Lcom/badlogic/gdx/files/FileHandle;
    .param p2, "flip"    # Z

    .prologue
    .line 850
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 835
    const/high16 v32, 0x3f800000    # 1.0f

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->capHeight:F

    .line 839
    const/high16 v32, 0x3f800000    # 1.0f

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->scaleX:F

    const/high16 v32, 0x3f800000    # 1.0f

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->scaleY:F

    .line 841
    const/16 v32, 0x80

    move/from16 v0, v32

    new-array v0, v0, [[Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->glyphs:[[Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    .line 843
    const/high16 v32, 0x3f800000    # 1.0f

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->xHeight:F

    .line 851
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->fontFile:Lcom/badlogic/gdx/files/FileHandle;

    .line 852
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->flipped:Z

    .line 853
    new-instance v26, Ljava/io/BufferedReader;

    new-instance v32, Ljava/io/InputStreamReader;

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/files/FileHandle;->read()Ljava/io/InputStream;

    move-result-object v33

    invoke-direct/range {v32 .. v33}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v33, 0x200

    move-object/from16 v0, v26

    move-object/from16 v1, v32

    move/from16 v2, v33

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 855
    .local v26, "reader":Ljava/io/BufferedReader;
    :try_start_0
    invoke-virtual/range {v26 .. v26}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 857
    invoke-virtual/range {v26 .. v26}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v19

    .line 858
    .local v19, "line":Ljava/lang/String;
    if-nez v19, :cond_0

    new-instance v32, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v33, "File is empty."

    invoke-direct/range {v32 .. v33}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v32
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1020
    .end local v19    # "line":Ljava/lang/String;
    :catch_0
    move-exception v10

    .line 1021
    .local v10, "ex":Ljava/lang/Exception;
    :try_start_1
    new-instance v32, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "Error loading font file: "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    invoke-direct {v0, v1, v10}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v32
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1023
    .end local v10    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v32

    invoke-static/range {v26 .. v26}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v32

    .line 859
    .restart local v19    # "line":Ljava/lang/String;
    :cond_0
    :try_start_2
    const-string v32, " "

    const/16 v33, 0x7

    move-object/from16 v0, v19

    move-object/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v9

    .line 862
    .local v9, "common":[Ljava/lang/String;
    array-length v0, v9

    move/from16 v32, v0

    const/16 v33, 0x3

    move/from16 v0, v32

    move/from16 v1, v33

    if-ge v0, v1, :cond_1

    new-instance v32, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v33, "Invalid header."

    invoke-direct/range {v32 .. v33}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v32

    .line 864
    :cond_1
    const/16 v32, 0x1

    aget-object v32, v9, v32

    const-string v33, "lineHeight="

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v32

    if-nez v32, :cond_2

    new-instance v32, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v33, "Missing: lineHeight"

    invoke-direct/range {v32 .. v33}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v32

    .line 865
    :cond_2
    const/16 v32, 0x1

    aget-object v32, v9, v32

    const/16 v33, 0xb

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v32

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->lineHeight:F

    .line 867
    const/16 v32, 0x2

    aget-object v32, v9, v32

    const-string v33, "base="

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v32

    if-nez v32, :cond_3

    new-instance v32, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v33, "Missing: base"

    invoke-direct/range {v32 .. v33}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v32

    .line 868
    :cond_3
    const/16 v32, 0x2

    aget-object v32, v9, v32

    const/16 v33, 0x5

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v32

    move/from16 v0, v32

    int-to-float v6, v0

    .line 870
    .local v6, "baseLine":F
    const/16 v22, 0x1

    .line 871
    .local v22, "pageCount":I
    array-length v0, v9

    move/from16 v32, v0

    const/16 v33, 0x6

    move/from16 v0, v32

    move/from16 v1, v33

    if-lt v0, v1, :cond_4

    const/16 v32, 0x5

    aget-object v32, v9, v32

    if-eqz v32, :cond_4

    const/16 v32, 0x5

    aget-object v32, v9, v32

    const-string v33, "pages="

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v32

    if-eqz v32, :cond_4

    .line 873
    const/16 v32, 0x1

    const/16 v33, 0x5

    :try_start_3
    aget-object v33, v9, v33

    const/16 v34, 0x6

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v33

    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->max(II)I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v22

    .line 878
    :cond_4
    :goto_0
    :try_start_4
    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->imagePaths:[Ljava/lang/String;

    .line 881
    const/16 v20, 0x0

    .local v20, "p":I
    :goto_1
    move/from16 v0, v20

    move/from16 v1, v22

    if-ge v0, v1, :cond_a

    .line 883
    invoke-virtual/range {v26 .. v26}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v19

    .line 884
    if-nez v19, :cond_5

    new-instance v32, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v33, "Missing additional page definitions."

    invoke-direct/range {v32 .. v33}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v32

    .line 885
    :cond_5
    const-string v32, " "

    const/16 v33, 0x4

    move-object/from16 v0, v19

    move-object/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v24

    .line 886
    .local v24, "pageLine":[Ljava/lang/String;
    const/16 v32, 0x2

    aget-object v32, v24, v32

    const-string v33, "file="

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v32

    if-nez v32, :cond_6

    new-instance v32, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v33, "Missing: file"

    invoke-direct/range {v32 .. v33}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v32

    .line 889
    :cond_6
    const/16 v32, 0x1

    aget-object v32, v24, v32

    const-string v33, "id="

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v32

    if-eqz v32, :cond_7

    .line 891
    const/16 v32, 0x1

    :try_start_5
    aget-object v32, v24, v32

    const/16 v33, 0x3

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v23

    .line 892
    .local v23, "pageID":I
    move/from16 v0, v23

    move/from16 v1, v20

    if-eq v0, v1, :cond_7

    .line 893
    new-instance v32, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "Page IDs must be indices starting at 0: "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const/16 v34, 0x1

    aget-object v34, v24, v34

    const/16 v35, 0x3

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-direct/range {v32 .. v33}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v32
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 894
    .end local v23    # "pageID":I
    :catch_1
    move-exception v10

    .line 895
    .local v10, "ex":Ljava/lang/NumberFormatException;
    :try_start_6
    new-instance v32, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "Invalid page id: "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const/16 v34, 0x1

    aget-object v34, v24, v34

    const/16 v35, 0x3

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    invoke-direct {v0, v1, v10}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v32

    .line 899
    .end local v10    # "ex":Ljava/lang/NumberFormatException;
    :cond_7
    const/4 v11, 0x0

    .line 900
    .local v11, "fileName":Ljava/lang/String;
    const/16 v32, 0x2

    aget-object v32, v24, v32

    const-string v33, "\""

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_9

    .line 901
    const/16 v32, 0x2

    aget-object v32, v24, v32

    const/16 v33, 0x6

    const/16 v34, 0x2

    aget-object v34, v24, v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/String;->length()I

    move-result v34

    add-int/lit8 v34, v34, -0x1

    invoke-virtual/range {v32 .. v34}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 906
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/files/FileHandle;->parent()Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v11}, Lcom/badlogic/gdx/files/FileHandle;->child(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Lcom/badlogic/gdx/files/FileHandle;->path()Ljava/lang/String;

    move-result-object v32

    const-string v33, "\\\\"

    const-string v34, "/"

    invoke-virtual/range {v32 .. v34}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 907
    .local v25, "path":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->imagePath:Ljava/lang/String;

    move-object/from16 v32, v0

    if-nez v32, :cond_8

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->imagePath:Ljava/lang/String;

    .line 908
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->imagePaths:[Ljava/lang/String;

    move-object/from16 v32, v0

    aput-object v25, v32, v20

    .line 881
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_1

    .line 903
    .end local v25    # "path":Ljava/lang/String;
    :cond_9
    const/16 v32, 0x2

    aget-object v32, v24, v32

    const/16 v33, 0x5

    const/16 v34, 0x2

    aget-object v34, v24, v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/String;->length()I

    move-result v34

    invoke-virtual/range {v32 .. v34}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    goto :goto_2

    .line 910
    .end local v11    # "fileName":Ljava/lang/String;
    .end local v24    # "pageLine":[Ljava/lang/String;
    :cond_a
    const/16 v32, 0x0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->descent:F

    .line 913
    :cond_b
    :goto_3
    invoke-virtual/range {v26 .. v26}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v19

    .line 914
    if-nez v19, :cond_14

    .line 960
    :cond_c
    :goto_4
    invoke-virtual/range {v26 .. v26}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v19

    .line 961
    if-nez v19, :cond_18

    .line 979
    :cond_d
    const/16 v32, 0x20

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->getGlyph(C)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    move-result-object v28

    .line 980
    .local v28, "spaceGlyph":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    if-nez v28, :cond_f

    .line 981
    new-instance v28, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    .end local v28    # "spaceGlyph":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    invoke-direct/range {v28 .. v28}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;-><init>()V

    .line 982
    .restart local v28    # "spaceGlyph":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    const/16 v32, 0x20

    move/from16 v0, v32

    move-object/from16 v1, v28

    iput v0, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->id:I

    .line 983
    const/16 v32, 0x6c

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->getGlyph(C)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    move-result-object v31

    .line 984
    .local v31, "xadvanceGlyph":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    if-nez v31, :cond_e

    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->getFirstGlyph()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    move-result-object v31

    .line 985
    :cond_e
    move-object/from16 v0, v31

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->xadvance:I

    move/from16 v32, v0

    move/from16 v0, v32

    move-object/from16 v1, v28

    iput v0, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->xadvance:I

    .line 986
    const/16 v32, 0x20

    move-object/from16 v0, p0

    move/from16 v1, v32

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setGlyph(ILcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;)V

    .line 988
    .end local v31    # "xadvanceGlyph":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    :cond_f
    if-eqz v28, :cond_19

    move-object/from16 v0, v28

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->xadvance:I

    move/from16 v32, v0

    move-object/from16 v0, v28

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->width:I

    move/from16 v33, v0

    add-int v32, v32, v33

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    :goto_5
    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->spaceWidth:F

    .line 990
    const/16 v30, 0x0

    .line 991
    .local v30, "xGlyph":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_6
    sget-object v32, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->xChars:[C

    move-object/from16 v0, v32

    array-length v0, v0

    move/from16 v32, v0

    move/from16 v0, v32

    if-ge v14, v0, :cond_10

    .line 992
    sget-object v32, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->xChars:[C

    aget-char v32, v32, v14

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->getGlyph(C)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    move-result-object v30

    .line 993
    if-eqz v30, :cond_1a

    .line 995
    :cond_10
    if-nez v30, :cond_11

    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->getFirstGlyph()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    move-result-object v30

    .line 996
    :cond_11
    move-object/from16 v0, v30

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->height:I

    move/from16 v32, v0

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->xHeight:F

    .line 998
    const/4 v7, 0x0

    .line 999
    .local v7, "capGlyph":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    const/4 v14, 0x0

    :goto_7
    sget-object v32, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->capChars:[C

    move-object/from16 v0, v32

    array-length v0, v0

    move/from16 v32, v0

    move/from16 v0, v32

    if-ge v14, v0, :cond_12

    .line 1000
    sget-object v32, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->capChars:[C

    aget-char v32, v32, v14

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->getGlyph(C)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    move-result-object v7

    .line 1001
    if-eqz v7, :cond_1b

    .line 1003
    :cond_12
    if-nez v7, :cond_1f

    .line 1004
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->glyphs:[[Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    .local v4, "arr$":[[Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    array-length v0, v4

    move/from16 v17, v0

    .local v17, "len$":I
    const/4 v15, 0x0

    .local v15, "i$":I
    move/from16 v16, v15

    .end local v4    # "arr$":[[Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    .end local v15    # "i$":I
    .end local v17    # "len$":I
    .local v16, "i$":I
    :goto_8
    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_20

    aget-object v21, v4, v16

    .line 1005
    .local v21, "page":[Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    if-nez v21, :cond_1c

    .line 1004
    .end local v16    # "i$":I
    :cond_13
    add-int/lit8 v15, v16, 0x1

    .restart local v15    # "i$":I
    move/from16 v16, v15

    .end local v15    # "i$":I
    .restart local v16    # "i$":I
    goto :goto_8

    .line 915
    .end local v7    # "capGlyph":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    .end local v14    # "i":I
    .end local v16    # "i$":I
    .end local v21    # "page":[Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    .end local v28    # "spaceGlyph":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    .end local v30    # "xGlyph":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    :cond_14
    const-string v32, "kernings "

    move-object/from16 v0, v19

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v32

    if-nez v32, :cond_c

    .line 916
    const-string v32, "char "

    move-object/from16 v0, v19

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_b

    .line 918
    new-instance v13, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    invoke-direct {v13}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;-><init>()V

    .line 920
    .local v13, "glyph":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    new-instance v29, Ljava/util/StringTokenizer;

    const-string v32, " ="

    move-object/from16 v0, v29

    move-object/from16 v1, v19

    move-object/from16 v2, v32

    invoke-direct {v0, v1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 921
    .local v29, "tokens":Ljava/util/StringTokenizer;
    invoke-virtual/range {v29 .. v29}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 922
    invoke-virtual/range {v29 .. v29}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 923
    invoke-virtual/range {v29 .. v29}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 924
    .local v8, "ch":I
    const v32, 0xffff

    move/from16 v0, v32

    if-gt v8, v0, :cond_b

    .line 925
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v13}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setGlyph(ILcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;)V

    .line 928
    iput v8, v13, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->id:I

    .line 929
    invoke-virtual/range {v29 .. v29}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 930
    invoke-virtual/range {v29 .. v29}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v32

    move/from16 v0, v32

    iput v0, v13, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->srcX:I

    .line 931
    invoke-virtual/range {v29 .. v29}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 932
    invoke-virtual/range {v29 .. v29}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v32

    move/from16 v0, v32

    iput v0, v13, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->srcY:I

    .line 933
    invoke-virtual/range {v29 .. v29}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 934
    invoke-virtual/range {v29 .. v29}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v32

    move/from16 v0, v32

    iput v0, v13, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->width:I

    .line 935
    invoke-virtual/range {v29 .. v29}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 936
    invoke-virtual/range {v29 .. v29}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v32

    move/from16 v0, v32

    iput v0, v13, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->height:I

    .line 937
    invoke-virtual/range {v29 .. v29}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 938
    invoke-virtual/range {v29 .. v29}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v32

    move/from16 v0, v32

    iput v0, v13, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->xoffset:I

    .line 939
    invoke-virtual/range {v29 .. v29}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 940
    if-eqz p2, :cond_17

    .line 941
    invoke-virtual/range {v29 .. v29}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v32

    move/from16 v0, v32

    iput v0, v13, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->yoffset:I

    .line 944
    :goto_9
    invoke-virtual/range {v29 .. v29}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 945
    invoke-virtual/range {v29 .. v29}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v32

    move/from16 v0, v32

    iput v0, v13, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->xadvance:I

    .line 948
    invoke-virtual/range {v29 .. v29}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v32

    if-eqz v32, :cond_15

    invoke-virtual/range {v29 .. v29}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 949
    :cond_15
    invoke-virtual/range {v29 .. v29}, Ljava/util/StringTokenizer;->hasMoreTokens()Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result v32

    if-eqz v32, :cond_16

    .line 951
    :try_start_7
    invoke-virtual/range {v29 .. v29}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v32

    move/from16 v0, v32

    iput v0, v13, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->page:I
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 956
    :cond_16
    :goto_a
    :try_start_8
    iget v0, v13, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->width:I

    move/from16 v32, v0

    if-lez v32, :cond_b

    iget v0, v13, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->height:I

    move/from16 v32, v0

    if-lez v32, :cond_b

    iget v0, v13, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->yoffset:I

    move/from16 v32, v0

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    add-float v32, v32, v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->descent:F

    move/from16 v33, v0

    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->min(FF)F

    move-result v32

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->descent:F

    goto/16 :goto_3

    .line 943
    :cond_17
    iget v0, v13, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->height:I

    move/from16 v32, v0

    invoke-virtual/range {v29 .. v29}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v33

    add-int v32, v32, v33

    move/from16 v0, v32

    neg-int v0, v0

    move/from16 v32, v0

    move/from16 v0, v32

    iput v0, v13, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->yoffset:I

    goto :goto_9

    .line 962
    .end local v8    # "ch":I
    .end local v13    # "glyph":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    .end local v29    # "tokens":Ljava/util/StringTokenizer;
    :cond_18
    const-string v32, "kerning "

    move-object/from16 v0, v19

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_d

    .line 964
    new-instance v29, Ljava/util/StringTokenizer;

    const-string v32, " ="

    move-object/from16 v0, v29

    move-object/from16 v1, v19

    move-object/from16 v2, v32

    invoke-direct {v0, v1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 965
    .restart local v29    # "tokens":Ljava/util/StringTokenizer;
    invoke-virtual/range {v29 .. v29}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 966
    invoke-virtual/range {v29 .. v29}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 967
    invoke-virtual/range {v29 .. v29}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 968
    .local v12, "first":I
    invoke-virtual/range {v29 .. v29}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 969
    invoke-virtual/range {v29 .. v29}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v27

    .line 970
    .local v27, "second":I
    if-ltz v12, :cond_c

    const v32, 0xffff

    move/from16 v0, v32

    if-gt v12, v0, :cond_c

    if-ltz v27, :cond_c

    const v32, 0xffff

    move/from16 v0, v27

    move/from16 v1, v32

    if-gt v0, v1, :cond_c

    .line 971
    int-to-char v0, v12

    move/from16 v32, v0

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->getGlyph(C)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    move-result-object v13

    .line 972
    .restart local v13    # "glyph":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    invoke-virtual/range {v29 .. v29}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 973
    invoke-virtual/range {v29 .. v29}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 974
    .local v3, "amount":I
    if-eqz v13, :cond_c

    .line 975
    move/from16 v0, v27

    invoke-virtual {v13, v0, v3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->setKerning(II)V

    goto/16 :goto_4

    .line 988
    .end local v3    # "amount":I
    .end local v12    # "first":I
    .end local v13    # "glyph":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    .end local v27    # "second":I
    .end local v29    # "tokens":Ljava/util/StringTokenizer;
    .restart local v28    # "spaceGlyph":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    :cond_19
    const/high16 v32, 0x3f800000    # 1.0f

    goto/16 :goto_5

    .line 991
    .restart local v14    # "i":I
    .restart local v30    # "xGlyph":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    :cond_1a
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_6

    .line 999
    .restart local v7    # "capGlyph":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    :cond_1b
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_7

    .line 1006
    .restart local v16    # "i$":I
    .restart local v21    # "page":[Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    :cond_1c
    move-object/from16 v5, v21

    .local v5, "arr$":[Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    array-length v0, v5

    move/from16 v18, v0

    .local v18, "len$":I
    const/4 v15, 0x0

    .end local v16    # "i$":I
    .restart local v15    # "i$":I
    :goto_b
    move/from16 v0, v18

    if-ge v15, v0, :cond_13

    aget-object v13, v5, v15

    .line 1007
    .restart local v13    # "glyph":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    if-eqz v13, :cond_1d

    iget v0, v13, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->height:I

    move/from16 v32, v0

    if-eqz v32, :cond_1d

    iget v0, v13, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->width:I

    move/from16 v32, v0

    if-nez v32, :cond_1e

    .line 1006
    :cond_1d
    :goto_c
    add-int/lit8 v15, v15, 0x1

    goto :goto_b

    .line 1008
    :cond_1e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->capHeight:F

    move/from16 v32, v0

    iget v0, v13, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->height:I

    move/from16 v33, v0

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->max(FF)F

    move-result v32

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->capHeight:F

    goto :goto_c

    .line 1012
    .end local v5    # "arr$":[Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    .end local v13    # "glyph":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    .end local v15    # "i$":I
    .end local v18    # "len$":I
    .end local v21    # "page":[Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    :cond_1f
    iget v0, v7, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->height:I

    move/from16 v32, v0

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->capHeight:F

    .line 1014
    :cond_20
    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->capHeight:F

    move/from16 v32, v0

    sub-float v32, v6, v32

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->ascent:F

    .line 1015
    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->lineHeight:F

    move/from16 v32, v0

    move/from16 v0, v32

    neg-float v0, v0

    move/from16 v32, v0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->down:F

    .line 1016
    if-eqz p2, :cond_21

    .line 1017
    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->ascent:F

    move/from16 v32, v0

    move/from16 v0, v32

    neg-float v0, v0

    move/from16 v32, v0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->ascent:F

    .line 1018
    move-object/from16 v0, p0

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->down:F

    move/from16 v32, v0

    move/from16 v0, v32

    neg-float v0, v0

    move/from16 v32, v0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->down:F
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 1023
    :cond_21
    invoke-static/range {v26 .. v26}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 1025
    return-void

    .line 952
    .end local v7    # "capGlyph":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    .end local v14    # "i":I
    .end local v28    # "spaceGlyph":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    .end local v30    # "xGlyph":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    .restart local v8    # "ch":I
    .restart local v13    # "glyph":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    .restart local v29    # "tokens":Ljava/util/StringTokenizer;
    :catch_2
    move-exception v32

    goto/16 :goto_a

    .line 874
    .end local v8    # "ch":I
    .end local v13    # "glyph":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    .end local v20    # "p":I
    .end local v29    # "tokens":Ljava/util/StringTokenizer;
    :catch_3
    move-exception v32

    goto/16 :goto_0
.end method


# virtual methods
.method public getFirstGlyph()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    .locals 10

    .prologue
    .line 1040
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->glyphs:[[Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    .local v0, "arr$":[[Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    move v4, v3

    .end local v0    # "arr$":[[Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    .end local v3    # "i$":I
    .end local v5    # "len$":I
    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_3

    aget-object v7, v0, v4

    .line 1041
    .local v7, "page":[Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    if-nez v7, :cond_1

    .line 1040
    .end local v4    # "i$":I
    :cond_0
    add-int/lit8 v3, v4, 0x1

    .restart local v3    # "i$":I
    move v4, v3

    .end local v3    # "i$":I
    .restart local v4    # "i$":I
    goto :goto_0

    .line 1042
    :cond_1
    move-object v1, v7

    .local v1, "arr$":[Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    array-length v6, v1

    .local v6, "len$":I
    const/4 v3, 0x0

    .end local v4    # "i$":I
    .restart local v3    # "i$":I
    :goto_1
    if-ge v3, v6, :cond_0

    aget-object v2, v1, v3

    .line 1043
    .local v2, "glyph":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    if-eqz v2, :cond_2

    iget v8, v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->height:I

    if-eqz v8, :cond_2

    iget v8, v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->width:I

    if-nez v8, :cond_4

    .line 1042
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1047
    .end local v1    # "arr$":[Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    .end local v2    # "glyph":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    .end local v3    # "i$":I
    .end local v6    # "len$":I
    .end local v7    # "page":[Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    .restart local v4    # "i$":I
    :cond_3
    new-instance v8, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v9, "No glyphs found."

    invoke-direct {v8, v9}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1044
    .end local v4    # "i$":I
    .restart local v1    # "arr$":[Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    .restart local v2    # "glyph":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    .restart local v3    # "i$":I
    .restart local v6    # "len$":I
    .restart local v7    # "page":[Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    :cond_4
    return-object v2
.end method

.method public getFontFile()Lcom/badlogic/gdx/files/FileHandle;
    .locals 1

    .prologue
    .line 1074
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->fontFile:Lcom/badlogic/gdx/files/FileHandle;

    return-object v0
.end method

.method public getGlyph(C)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    .locals 3
    .param p1, "ch"    # C

    .prologue
    .line 1052
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->glyphs:[[Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    div-int/lit16 v2, p1, 0x200

    aget-object v0, v1, v2

    .line 1053
    .local v0, "page":[Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    if-eqz v0, :cond_0

    and-int/lit16 v1, p1, 0x1ff

    aget-object v1, v0, v1

    .line 1054
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getImagePath()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1061
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->imagePath:Ljava/lang/String;

    return-object v0
.end method

.method public getImagePath(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1066
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->imagePaths:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getImagePaths()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 1070
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->imagePaths:[Ljava/lang/String;

    return-object v0
.end method

.method public setGlyph(ILcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;)V
    .locals 4
    .param p1, "ch"    # I
    .param p2, "glyph"    # Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    .prologue
    .line 1034
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->glyphs:[[Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    div-int/lit16 v2, p1, 0x200

    aget-object v0, v1, v2

    .line 1035
    .local v0, "page":[Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->glyphs:[[Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    div-int/lit16 v2, p1, 0x200

    const/16 v3, 0x200

    new-array v0, v3, [Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    aput-object v0, v1, v2

    .line 1036
    :cond_0
    and-int/lit16 v1, p1, 0x1ff

    aput-object p2, v0, v1

    .line 1037
    return-void
.end method

.method public setLineHeight(F)V
    .locals 1
    .param p1, "height"    # F

    .prologue
    .line 1029
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->scaleY:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->lineHeight:F

    .line 1030
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->flipped:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->lineHeight:F

    :goto_0
    iput v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->down:F

    .line 1031
    return-void

    .line 1030
    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->lineHeight:F

    neg-float v0, v0

    goto :goto_0
.end method
