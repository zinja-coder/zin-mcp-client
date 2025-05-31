.class public Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;
.super Lcom/badlogic/gdx/assets/loaders/ModelLoader;
.source "ObjLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader$Group;,
        Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader$ObjLoaderParameters;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/badlogic/gdx/assets/loaders/ModelLoader",
        "<",
        "Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader$ObjLoaderParameters;",
        ">;"
    }
.end annotation


# static fields
.field public static logWarning:Z


# instance fields
.field final groups:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader$Group;",
            ">;"
        }
    .end annotation
.end field

.field final norms:Lcom/badlogic/gdx/utils/FloatArray;

.field final uvs:Lcom/badlogic/gdx/utils/FloatArray;

.field final verts:Lcom/badlogic/gdx/utils/FloatArray;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    sput-boolean v0, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;->logWarning:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;-><init>(Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;)V

    .line 87
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;)V
    .locals 2
    .param p1, "resolver"    # Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;

    .prologue
    const/16 v1, 0x12c

    .line 90
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/assets/loaders/ModelLoader;-><init>(Lcom/badlogic/gdx/assets/loaders/FileHandleResolver;)V

    .line 80
    new-instance v0, Lcom/badlogic/gdx/utils/FloatArray;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/FloatArray;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;->verts:Lcom/badlogic/gdx/utils/FloatArray;

    .line 81
    new-instance v0, Lcom/badlogic/gdx/utils/FloatArray;

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/FloatArray;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;->norms:Lcom/badlogic/gdx/utils/FloatArray;

    .line 82
    new-instance v0, Lcom/badlogic/gdx/utils/FloatArray;

    const/16 v1, 0xc8

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/FloatArray;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;->uvs:Lcom/badlogic/gdx/utils/FloatArray;

    .line 83
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;->groups:Lcom/badlogic/gdx/utils/Array;

    .line 91
    return-void
.end method

.method private getIndex(Ljava/lang/String;I)I
    .locals 2
    .param p1, "index"    # Ljava/lang/String;
    .param p2, "size"    # I

    .prologue
    .line 322
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    .line 327
    :goto_0
    return v1

    .line 323
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 324
    .local v0, "idx":I
    if-gez v0, :cond_2

    .line 325
    add-int v1, p2, v0

    goto :goto_0

    .line 327
    :cond_2
    add-int/lit8 v1, v0, -0x1

    goto :goto_0
.end method

.method private setActiveGroup(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader$Group;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 313
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;->groups:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Array;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader$Group;

    .line 314
    .local v0, "group":Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader$Group;
    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader$Group;->name:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 318
    :goto_0
    return-object v0

    .line 316
    .end local v0    # "group":Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader$Group;
    :cond_1
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader$Group;

    invoke-direct {v0, p0, p1}, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader$Group;-><init>(Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;Ljava/lang/String;)V

    .line 317
    .restart local v0    # "group":Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader$Group;
    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;->groups:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public loadModel(Lcom/badlogic/gdx/files/FileHandle;Z)Lcom/badlogic/gdx/graphics/g3d/Model;
    .locals 1
    .param p1, "fileHandle"    # Lcom/badlogic/gdx/files/FileHandle;
    .param p2, "flipV"    # Z

    .prologue
    .line 116
    new-instance v0, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader$ObjLoaderParameters;

    invoke-direct {v0, p2}, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader$ObjLoaderParameters;-><init>(Z)V

    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;->loadModel(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/assets/loaders/ModelLoader$ModelParameters;)Lcom/badlogic/gdx/graphics/g3d/Model;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic loadModelData(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/assets/loaders/ModelLoader$ModelParameters;)Lcom/badlogic/gdx/graphics/g3d/model/data/ModelData;
    .locals 1
    .param p1, "x0"    # Lcom/badlogic/gdx/files/FileHandle;
    .param p2, "x1"    # Lcom/badlogic/gdx/assets/loaders/ModelLoader$ModelParameters;

    .prologue
    .line 64
    check-cast p2, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader$ObjLoaderParameters;

    .end local p2    # "x1":Lcom/badlogic/gdx/assets/loaders/ModelLoader$ModelParameters;
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;->loadModelData(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader$ObjLoaderParameters;)Lcom/badlogic/gdx/graphics/g3d/model/data/ModelData;

    move-result-object v0

    return-object v0
.end method

.method public loadModelData(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader$ObjLoaderParameters;)Lcom/badlogic/gdx/graphics/g3d/model/data/ModelData;
    .locals 1
    .param p1, "file"    # Lcom/badlogic/gdx/files/FileHandle;
    .param p2, "parameters"    # Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader$ObjLoaderParameters;

    .prologue
    .line 121
    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;->loadModelData(Lcom/badlogic/gdx/files/FileHandle;Z)Lcom/badlogic/gdx/graphics/g3d/model/data/ModelData;

    move-result-object v0

    return-object v0

    :cond_0
    iget-boolean v0, p2, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader$ObjLoaderParameters;->flipV:Z

    goto :goto_0
.end method

.method protected loadModelData(Lcom/badlogic/gdx/files/FileHandle;Z)Lcom/badlogic/gdx/graphics/g3d/model/data/ModelData;
    .locals 47
    .param p1, "file"    # Lcom/badlogic/gdx/files/FileHandle;
    .param p2, "flipV"    # Z

    .prologue
    .line 125
    sget-boolean v43, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;->logWarning:Z

    if-eqz v43, :cond_0

    .line 126
    sget-object v43, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    const-string v44, "ObjLoader"

    const-string v45, "Wavefront (OBJ) is not fully supported, consult the documentation for more information"

    invoke-interface/range {v43 .. v45}, Lcom/badlogic/gdx/Application;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    :cond_0
    new-instance v22, Lcom/badlogic/gdx/graphics/g3d/loader/MtlLoader;

    invoke-direct/range {v22 .. v22}, Lcom/badlogic/gdx/graphics/g3d/loader/MtlLoader;-><init>()V

    .line 134
    .local v22, "mtl":Lcom/badlogic/gdx/graphics/g3d/loader/MtlLoader;
    new-instance v3, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader$Group;

    const-string v43, "default"

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v3, v0, v1}, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader$Group;-><init>(Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;Ljava/lang/String;)V

    .line 135
    .local v3, "activeGroup":Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader$Group;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;->groups:Lcom/badlogic/gdx/utils/Array;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 137
    new-instance v35, Ljava/io/BufferedReader;

    new-instance v43, Ljava/io/InputStreamReader;

    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/files/FileHandle;->read()Ljava/io/InputStream;

    move-result-object v44

    invoke-direct/range {v43 .. v44}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v44, 0x1000

    move-object/from16 v0, v35

    move-object/from16 v1, v43

    move/from16 v2, v44

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 138
    .local v35, "reader":Ljava/io/BufferedReader;
    const/16 v17, 0x0

    .line 140
    .local v17, "id":I
    :cond_1
    :goto_0
    :try_start_0
    invoke-virtual/range {v35 .. v35}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v18

    .local v18, "line":Ljava/lang/String;
    if-eqz v18, :cond_2

    .line 142
    const-string v43, "\\s+"

    move-object/from16 v0, v18

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v36

    .line 143
    .local v36, "tokens":[Ljava/lang/String;
    move-object/from16 v0, v36

    array-length v0, v0

    move/from16 v43, v0

    const/16 v44, 0x1

    move/from16 v0, v43

    move/from16 v1, v44

    if-ge v0, v1, :cond_4

    .line 204
    .end local v36    # "tokens":[Ljava/lang/String;
    :cond_2
    invoke-virtual/range {v35 .. v35}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;->groups:Lcom/badlogic/gdx/utils/Array;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    move/from16 v43, v0

    move/from16 v0, v43

    if-ge v15, v0, :cond_18

    .line 211
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;->groups:Lcom/badlogic/gdx/utils/Array;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    invoke-virtual {v0, v15}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader$Group;

    move-object/from16 v0, v43

    iget v0, v0, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader$Group;->numFaces:I

    move/from16 v43, v0

    const/16 v44, 0x1

    move/from16 v0, v43

    move/from16 v1, v44

    if-ge v0, v1, :cond_3

    .line 212
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;->groups:Lcom/badlogic/gdx/utils/Array;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    invoke-virtual {v0, v15}, Lcom/badlogic/gdx/utils/Array;->removeIndex(I)Ljava/lang/Object;

    .line 213
    add-int/lit8 v15, v15, -0x1

    .line 210
    :cond_3
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 145
    .end local v15    # "i":I
    .restart local v36    # "tokens":[Ljava/lang/String;
    :cond_4
    const/16 v43, 0x0

    :try_start_1
    aget-object v43, v36, v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/String;->length()I

    move-result v43

    if-eqz v43, :cond_1

    .line 147
    const/16 v43, 0x0

    aget-object v43, v36, v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v43

    const/16 v44, 0x0

    invoke-virtual/range {v43 .. v44}, Ljava/lang/String;->charAt(I)C

    move-result v10

    .local v10, "firstChar":C
    const/16 v43, 0x23

    move/from16 v0, v43

    if-eq v10, v0, :cond_1

    .line 149
    const/16 v43, 0x76

    move/from16 v0, v43

    if-ne v10, v0, :cond_9

    .line 150
    const/16 v43, 0x0

    aget-object v43, v36, v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/String;->length()I

    move-result v43

    const/16 v44, 0x1

    move/from16 v0, v43

    move/from16 v1, v44

    if-ne v0, v1, :cond_6

    .line 151
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;->verts:Lcom/badlogic/gdx/utils/FloatArray;

    move-object/from16 v43, v0

    const/16 v44, 0x1

    aget-object v44, v36, v44

    invoke-static/range {v44 .. v44}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v44

    invoke-virtual/range {v43 .. v44}, Lcom/badlogic/gdx/utils/FloatArray;->add(F)V

    .line 152
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;->verts:Lcom/badlogic/gdx/utils/FloatArray;

    move-object/from16 v43, v0

    const/16 v44, 0x2

    aget-object v44, v36, v44

    invoke-static/range {v44 .. v44}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v44

    invoke-virtual/range {v43 .. v44}, Lcom/badlogic/gdx/utils/FloatArray;->add(F)V

    .line 153
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;->verts:Lcom/badlogic/gdx/utils/FloatArray;

    move-object/from16 v43, v0

    const/16 v44, 0x3

    aget-object v44, v36, v44

    invoke-static/range {v44 .. v44}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v44

    invoke-virtual/range {v43 .. v44}, Lcom/badlogic/gdx/utils/FloatArray;->add(F)V

    goto/16 :goto_0

    .line 205
    .end local v10    # "firstChar":C
    .end local v18    # "line":Ljava/lang/String;
    .end local v36    # "tokens":[Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 206
    .local v6, "e":Ljava/io/IOException;
    const/4 v5, 0x0

    .line 307
    .end local v6    # "e":Ljava/io/IOException;
    :cond_5
    :goto_2
    return-object v5

    .line 154
    .restart local v10    # "firstChar":C
    .restart local v18    # "line":Ljava/lang/String;
    .restart local v36    # "tokens":[Ljava/lang/String;
    :cond_6
    const/16 v43, 0x0

    aget-object v43, v36, v43

    const/16 v44, 0x1

    invoke-virtual/range {v43 .. v44}, Ljava/lang/String;->charAt(I)C

    move-result v43

    const/16 v44, 0x6e

    move/from16 v0, v43

    move/from16 v1, v44

    if-ne v0, v1, :cond_7

    .line 155
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;->norms:Lcom/badlogic/gdx/utils/FloatArray;

    move-object/from16 v43, v0

    const/16 v44, 0x1

    aget-object v44, v36, v44

    invoke-static/range {v44 .. v44}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v44

    invoke-virtual/range {v43 .. v44}, Lcom/badlogic/gdx/utils/FloatArray;->add(F)V

    .line 156
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;->norms:Lcom/badlogic/gdx/utils/FloatArray;

    move-object/from16 v43, v0

    const/16 v44, 0x2

    aget-object v44, v36, v44

    invoke-static/range {v44 .. v44}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v44

    invoke-virtual/range {v43 .. v44}, Lcom/badlogic/gdx/utils/FloatArray;->add(F)V

    .line 157
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;->norms:Lcom/badlogic/gdx/utils/FloatArray;

    move-object/from16 v43, v0

    const/16 v44, 0x3

    aget-object v44, v36, v44

    invoke-static/range {v44 .. v44}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v44

    invoke-virtual/range {v43 .. v44}, Lcom/badlogic/gdx/utils/FloatArray;->add(F)V

    goto/16 :goto_0

    .line 158
    :cond_7
    const/16 v43, 0x0

    aget-object v43, v36, v43

    const/16 v44, 0x1

    invoke-virtual/range {v43 .. v44}, Ljava/lang/String;->charAt(I)C

    move-result v43

    const/16 v44, 0x74

    move/from16 v0, v43

    move/from16 v1, v44

    if-ne v0, v1, :cond_1

    .line 159
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;->uvs:Lcom/badlogic/gdx/utils/FloatArray;

    move-object/from16 v43, v0

    const/16 v44, 0x1

    aget-object v44, v36, v44

    invoke-static/range {v44 .. v44}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v44

    invoke-virtual/range {v43 .. v44}, Lcom/badlogic/gdx/utils/FloatArray;->add(F)V

    .line 160
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;->uvs:Lcom/badlogic/gdx/utils/FloatArray;

    move-object/from16 v44, v0

    if-eqz p2, :cond_8

    const/high16 v43, 0x3f800000    # 1.0f

    const/16 v45, 0x2

    aget-object v45, v36, v45

    invoke-static/range {v45 .. v45}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v45

    sub-float v43, v43, v45

    :goto_3
    move-object/from16 v0, v44

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/FloatArray;->add(F)V

    goto/16 :goto_0

    :cond_8
    const/16 v43, 0x2

    aget-object v43, v36, v43

    invoke-static/range {v43 .. v43}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v43

    goto :goto_3

    .line 162
    :cond_9
    const/16 v43, 0x66

    move/from16 v0, v43

    if-ne v10, v0, :cond_12

    .line 164
    iget-object v7, v3, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader$Group;->faces:Lcom/badlogic/gdx/utils/Array;

    .line 165
    .local v7, "faces":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/Integer;>;"
    const/4 v15, 0x1

    .restart local v15    # "i":I
    :goto_4
    move-object/from16 v0, v36

    array-length v0, v0

    move/from16 v43, v0

    add-int/lit8 v43, v43, -0x2

    move/from16 v0, v43

    if-ge v15, v0, :cond_1

    .line 166
    const/16 v43, 0x1

    aget-object v43, v36, v43

    const-string v44, "/"

    invoke-virtual/range {v43 .. v44}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v33

    .line 167
    .local v33, "parts":[Ljava/lang/String;
    const/16 v43, 0x0

    aget-object v43, v33, v43

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;->verts:Lcom/badlogic/gdx/utils/FloatArray;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget v0, v0, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    move/from16 v44, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    move/from16 v2, v44

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;->getIndex(Ljava/lang/String;I)I

    move-result v43

    invoke-static/range {v43 .. v43}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v43

    move-object/from16 v0, v43

    invoke-virtual {v7, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 168
    move-object/from16 v0, v33

    array-length v0, v0

    move/from16 v43, v0

    const/16 v44, 0x2

    move/from16 v0, v43

    move/from16 v1, v44

    if-le v0, v1, :cond_b

    .line 169
    const/16 v43, 0x1

    move/from16 v0, v43

    if-ne v15, v0, :cond_a

    const/16 v43, 0x1

    move/from16 v0, v43

    iput-boolean v0, v3, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader$Group;->hasNorms:Z

    .line 170
    :cond_a
    const/16 v43, 0x2

    aget-object v43, v33, v43

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;->norms:Lcom/badlogic/gdx/utils/FloatArray;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget v0, v0, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    move/from16 v44, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    move/from16 v2, v44

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;->getIndex(Ljava/lang/String;I)I

    move-result v43

    invoke-static/range {v43 .. v43}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v43

    move-object/from16 v0, v43

    invoke-virtual {v7, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 172
    :cond_b
    move-object/from16 v0, v33

    array-length v0, v0

    move/from16 v43, v0

    const/16 v44, 0x1

    move/from16 v0, v43

    move/from16 v1, v44

    if-le v0, v1, :cond_d

    const/16 v43, 0x1

    aget-object v43, v33, v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/String;->length()I

    move-result v43

    if-lez v43, :cond_d

    .line 173
    const/16 v43, 0x1

    move/from16 v0, v43

    if-ne v15, v0, :cond_c

    const/16 v43, 0x1

    move/from16 v0, v43

    iput-boolean v0, v3, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader$Group;->hasUVs:Z

    .line 174
    :cond_c
    const/16 v43, 0x1

    aget-object v43, v33, v43

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;->uvs:Lcom/badlogic/gdx/utils/FloatArray;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget v0, v0, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    move/from16 v44, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    move/from16 v2, v44

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;->getIndex(Ljava/lang/String;I)I

    move-result v43

    invoke-static/range {v43 .. v43}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v43

    move-object/from16 v0, v43

    invoke-virtual {v7, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 176
    :cond_d
    add-int/lit8 v15, v15, 0x1

    aget-object v43, v36, v15

    const-string v44, "/"

    invoke-virtual/range {v43 .. v44}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v33

    .line 177
    const/16 v43, 0x0

    aget-object v43, v33, v43

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;->verts:Lcom/badlogic/gdx/utils/FloatArray;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget v0, v0, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    move/from16 v44, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    move/from16 v2, v44

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;->getIndex(Ljava/lang/String;I)I

    move-result v43

    invoke-static/range {v43 .. v43}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v43

    move-object/from16 v0, v43

    invoke-virtual {v7, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 178
    move-object/from16 v0, v33

    array-length v0, v0

    move/from16 v43, v0

    const/16 v44, 0x2

    move/from16 v0, v43

    move/from16 v1, v44

    if-le v0, v1, :cond_e

    const/16 v43, 0x2

    aget-object v43, v33, v43

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;->norms:Lcom/badlogic/gdx/utils/FloatArray;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget v0, v0, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    move/from16 v44, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    move/from16 v2, v44

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;->getIndex(Ljava/lang/String;I)I

    move-result v43

    invoke-static/range {v43 .. v43}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v43

    move-object/from16 v0, v43

    invoke-virtual {v7, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 179
    :cond_e
    move-object/from16 v0, v33

    array-length v0, v0

    move/from16 v43, v0

    const/16 v44, 0x1

    move/from16 v0, v43

    move/from16 v1, v44

    if-le v0, v1, :cond_f

    const/16 v43, 0x1

    aget-object v43, v33, v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/String;->length()I

    move-result v43

    if-lez v43, :cond_f

    const/16 v43, 0x1

    aget-object v43, v33, v43

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;->uvs:Lcom/badlogic/gdx/utils/FloatArray;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget v0, v0, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    move/from16 v44, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    move/from16 v2, v44

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;->getIndex(Ljava/lang/String;I)I

    move-result v43

    invoke-static/range {v43 .. v43}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v43

    move-object/from16 v0, v43

    invoke-virtual {v7, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 180
    :cond_f
    add-int/lit8 v15, v15, 0x1

    aget-object v43, v36, v15

    const-string v44, "/"

    invoke-virtual/range {v43 .. v44}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v33

    .line 181
    const/16 v43, 0x0

    aget-object v43, v33, v43

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;->verts:Lcom/badlogic/gdx/utils/FloatArray;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget v0, v0, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    move/from16 v44, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    move/from16 v2, v44

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;->getIndex(Ljava/lang/String;I)I

    move-result v43

    invoke-static/range {v43 .. v43}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v43

    move-object/from16 v0, v43

    invoke-virtual {v7, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 182
    move-object/from16 v0, v33

    array-length v0, v0

    move/from16 v43, v0

    const/16 v44, 0x2

    move/from16 v0, v43

    move/from16 v1, v44

    if-le v0, v1, :cond_10

    const/16 v43, 0x2

    aget-object v43, v33, v43

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;->norms:Lcom/badlogic/gdx/utils/FloatArray;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget v0, v0, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    move/from16 v44, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    move/from16 v2, v44

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;->getIndex(Ljava/lang/String;I)I

    move-result v43

    invoke-static/range {v43 .. v43}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v43

    move-object/from16 v0, v43

    invoke-virtual {v7, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 183
    :cond_10
    move-object/from16 v0, v33

    array-length v0, v0

    move/from16 v43, v0

    const/16 v44, 0x1

    move/from16 v0, v43

    move/from16 v1, v44

    if-le v0, v1, :cond_11

    const/16 v43, 0x1

    aget-object v43, v33, v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/String;->length()I

    move-result v43

    if-lez v43, :cond_11

    const/16 v43, 0x1

    aget-object v43, v33, v43

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;->uvs:Lcom/badlogic/gdx/utils/FloatArray;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget v0, v0, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    move/from16 v44, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    move/from16 v2, v44

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;->getIndex(Ljava/lang/String;I)I

    move-result v43

    invoke-static/range {v43 .. v43}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v43

    move-object/from16 v0, v43

    invoke-virtual {v7, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 184
    :cond_11
    iget v0, v3, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader$Group;->numFaces:I

    move/from16 v43, v0

    add-int/lit8 v43, v43, 0x1

    move/from16 v0, v43

    iput v0, v3, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader$Group;->numFaces:I

    .line 165
    add-int/lit8 v15, v15, -0x1

    goto/16 :goto_4

    .line 186
    .end local v7    # "faces":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/Integer;>;"
    .end local v15    # "i":I
    .end local v33    # "parts":[Ljava/lang/String;
    :cond_12
    const/16 v43, 0x6f

    move/from16 v0, v43

    if-eq v10, v0, :cond_13

    const/16 v43, 0x67

    move/from16 v0, v43

    if-ne v10, v0, :cond_15

    .line 191
    :cond_13
    move-object/from16 v0, v36

    array-length v0, v0

    move/from16 v43, v0

    const/16 v44, 0x1

    move/from16 v0, v43

    move/from16 v1, v44

    if-le v0, v1, :cond_14

    .line 192
    const/16 v43, 0x1

    aget-object v43, v36, v43

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;->setActiveGroup(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader$Group;

    move-result-object v3

    goto/16 :goto_0

    .line 194
    :cond_14
    const-string v43, "default"

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;->setActiveGroup(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader$Group;

    move-result-object v3

    goto/16 :goto_0

    .line 195
    :cond_15
    const/16 v43, 0x0

    aget-object v43, v36, v43

    const-string v44, "mtllib"

    invoke-virtual/range {v43 .. v44}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v43

    if-eqz v43, :cond_16

    .line 196
    invoke-virtual/range {p1 .. p1}, Lcom/badlogic/gdx/files/FileHandle;->parent()Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v43

    const/16 v44, 0x1

    aget-object v44, v36, v44

    invoke-virtual/range {v43 .. v44}, Lcom/badlogic/gdx/files/FileHandle;->child(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v43

    move-object/from16 v0, v22

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/loader/MtlLoader;->load(Lcom/badlogic/gdx/files/FileHandle;)V

    goto/16 :goto_0

    .line 197
    :cond_16
    const/16 v43, 0x0

    aget-object v43, v36, v43

    const-string v44, "usemtl"

    invoke-virtual/range {v43 .. v44}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v43

    if-eqz v43, :cond_1

    .line 198
    move-object/from16 v0, v36

    array-length v0, v0

    move/from16 v43, v0

    const/16 v44, 0x1

    move/from16 v0, v43

    move/from16 v1, v44

    if-ne v0, v1, :cond_17

    .line 199
    const-string v43, "default"

    move-object/from16 v0, v43

    iput-object v0, v3, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader$Group;->materialName:Ljava/lang/String;

    goto/16 :goto_0

    .line 201
    :cond_17
    const/16 v43, 0x1

    aget-object v43, v36, v43

    move-object/from16 v0, v43

    iput-object v0, v3, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader$Group;->materialName:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 218
    .end local v10    # "firstChar":C
    .end local v36    # "tokens":[Ljava/lang/String;
    .restart local v15    # "i":I
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;->groups:Lcom/badlogic/gdx/utils/Array;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    move/from16 v43, v0

    const/16 v44, 0x1

    move/from16 v0, v43

    move/from16 v1, v44

    if-ge v0, v1, :cond_19

    const/4 v5, 0x0

    goto/16 :goto_2

    .line 221
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;->groups:Lcom/badlogic/gdx/utils/Array;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    move/from16 v29, v0

    .line 223
    .local v29, "numGroups":I
    new-instance v5, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelData;

    invoke-direct {v5}, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelData;-><init>()V

    .line 225
    .local v5, "data":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelData;
    const/4 v11, 0x0

    .end local v15    # "i":I
    .local v11, "g":I
    :goto_5
    move/from16 v0, v29

    if-ge v11, v0, :cond_21

    .line 226
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;->groups:Lcom/badlogic/gdx/utils/Array;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    invoke-virtual {v0, v11}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader$Group;

    .line 227
    .local v12, "group":Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader$Group;
    iget-object v7, v12, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader$Group;->faces:Lcom/badlogic/gdx/utils/Array;

    .line 228
    .restart local v7    # "faces":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/Integer;>;"
    iget v0, v7, Lcom/badlogic/gdx/utils/Array;->size:I

    move/from16 v27, v0

    .line 229
    .local v27, "numElements":I
    iget v0, v12, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader$Group;->numFaces:I

    move/from16 v28, v0

    .line 230
    .local v28, "numFaces":I
    iget-boolean v13, v12, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader$Group;->hasNorms:Z

    .line 231
    .local v13, "hasNorms":Z
    iget-boolean v14, v12, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader$Group;->hasUVs:Z

    .line 233
    .local v14, "hasUVs":Z
    mul-int/lit8 v44, v28, 0x3

    if-eqz v13, :cond_1a

    const/16 v43, 0x3

    :goto_6
    add-int/lit8 v45, v43, 0x3

    if-eqz v14, :cond_1b

    const/16 v43, 0x2

    :goto_7
    add-int v43, v43, v45

    mul-int v43, v43, v44

    move/from16 v0, v43

    new-array v9, v0, [F

    .line 235
    .local v9, "finalVerts":[F
    const/4 v15, 0x0

    .restart local v15    # "i":I
    const/16 v41, 0x0

    .local v41, "vi":I
    move/from16 v42, v41

    .end local v41    # "vi":I
    .local v42, "vi":I
    move/from16 v16, v15

    .end local v15    # "i":I
    .local v16, "i":I
    :goto_8
    move/from16 v0, v16

    move/from16 v1, v27

    if-ge v0, v1, :cond_1c

    .line 236
    add-int/lit8 v15, v16, 0x1

    .end local v16    # "i":I
    .restart local v15    # "i":I
    move/from16 v0, v16

    invoke-virtual {v7, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Ljava/lang/Integer;

    invoke-virtual/range {v43 .. v43}, Ljava/lang/Integer;->intValue()I

    move-result v43

    mul-int/lit8 v39, v43, 0x3

    .line 237
    .local v39, "vertIndex":I
    add-int/lit8 v41, v42, 0x1

    .end local v42    # "vi":I
    .restart local v41    # "vi":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;->verts:Lcom/badlogic/gdx/utils/FloatArray;

    move-object/from16 v43, v0

    add-int/lit8 v40, v39, 0x1

    .end local v39    # "vertIndex":I
    .local v40, "vertIndex":I
    move-object/from16 v0, v43

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v43

    aput v43, v9, v42

    .line 238
    add-int/lit8 v42, v41, 0x1

    .end local v41    # "vi":I
    .restart local v42    # "vi":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;->verts:Lcom/badlogic/gdx/utils/FloatArray;

    move-object/from16 v43, v0

    add-int/lit8 v39, v40, 0x1

    .end local v40    # "vertIndex":I
    .restart local v39    # "vertIndex":I
    move-object/from16 v0, v43

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v43

    aput v43, v9, v41

    .line 239
    add-int/lit8 v41, v42, 0x1

    .end local v42    # "vi":I
    .restart local v41    # "vi":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;->verts:Lcom/badlogic/gdx/utils/FloatArray;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v43

    aput v43, v9, v42

    .line 240
    if-eqz v13, :cond_26

    .line 241
    add-int/lit8 v16, v15, 0x1

    .end local v15    # "i":I
    .restart local v16    # "i":I
    invoke-virtual {v7, v15}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Ljava/lang/Integer;

    invoke-virtual/range {v43 .. v43}, Ljava/lang/Integer;->intValue()I

    move-result v43

    mul-int/lit8 v25, v43, 0x3

    .line 242
    .local v25, "normIndex":I
    add-int/lit8 v42, v41, 0x1

    .end local v41    # "vi":I
    .restart local v42    # "vi":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;->norms:Lcom/badlogic/gdx/utils/FloatArray;

    move-object/from16 v43, v0

    add-int/lit8 v26, v25, 0x1

    .end local v25    # "normIndex":I
    .local v26, "normIndex":I
    move-object/from16 v0, v43

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v43

    aput v43, v9, v41

    .line 243
    add-int/lit8 v41, v42, 0x1

    .end local v42    # "vi":I
    .restart local v41    # "vi":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;->norms:Lcom/badlogic/gdx/utils/FloatArray;

    move-object/from16 v43, v0

    add-int/lit8 v25, v26, 0x1

    .end local v26    # "normIndex":I
    .restart local v25    # "normIndex":I
    move-object/from16 v0, v43

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v43

    aput v43, v9, v42

    .line 244
    add-int/lit8 v42, v41, 0x1

    .end local v41    # "vi":I
    .restart local v42    # "vi":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;->norms:Lcom/badlogic/gdx/utils/FloatArray;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v43

    aput v43, v9, v41

    .line 246
    .end local v25    # "normIndex":I
    :goto_9
    if-eqz v14, :cond_25

    .line 247
    add-int/lit8 v15, v16, 0x1

    .end local v16    # "i":I
    .restart local v15    # "i":I
    move/from16 v0, v16

    invoke-virtual {v7, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Ljava/lang/Integer;

    invoke-virtual/range {v43 .. v43}, Ljava/lang/Integer;->intValue()I

    move-result v43

    mul-int/lit8 v37, v43, 0x2

    .line 248
    .local v37, "uvIndex":I
    add-int/lit8 v41, v42, 0x1

    .end local v42    # "vi":I
    .restart local v41    # "vi":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;->uvs:Lcom/badlogic/gdx/utils/FloatArray;

    move-object/from16 v43, v0

    add-int/lit8 v38, v37, 0x1

    .end local v37    # "uvIndex":I
    .local v38, "uvIndex":I
    move-object/from16 v0, v43

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v43

    aput v43, v9, v42

    .line 249
    add-int/lit8 v42, v41, 0x1

    .end local v41    # "vi":I
    .restart local v42    # "vi":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;->uvs:Lcom/badlogic/gdx/utils/FloatArray;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/FloatArray;->get(I)F

    move-result v43

    aput v43, v9, v41

    move/from16 v41, v42

    .end local v38    # "uvIndex":I
    .end local v42    # "vi":I
    .restart local v41    # "vi":I
    :goto_a
    move/from16 v42, v41

    .end local v41    # "vi":I
    .restart local v42    # "vi":I
    move/from16 v16, v15

    .line 251
    .end local v15    # "i":I
    .restart local v16    # "i":I
    goto/16 :goto_8

    .line 233
    .end local v9    # "finalVerts":[F
    .end local v16    # "i":I
    .end local v39    # "vertIndex":I
    .end local v42    # "vi":I
    :cond_1a
    const/16 v43, 0x0

    goto/16 :goto_6

    :cond_1b
    const/16 v43, 0x0

    goto/16 :goto_7

    .line 253
    .restart local v9    # "finalVerts":[F
    .restart local v16    # "i":I
    .restart local v42    # "vi":I
    :cond_1c
    mul-int/lit8 v43, v28, 0x3

    const/16 v44, 0x7fff

    move/from16 v0, v43

    move/from16 v1, v44

    if-lt v0, v1, :cond_1d

    const/16 v30, 0x0

    .line 254
    .local v30, "numIndices":I
    :goto_b
    move/from16 v0, v30

    new-array v8, v0, [S

    .line 256
    .local v8, "finalIndices":[S
    if-lez v30, :cond_1e

    .line 257
    const/4 v15, 0x0

    .end local v16    # "i":I
    .restart local v15    # "i":I
    :goto_c
    move/from16 v0, v30

    if-ge v15, v0, :cond_1e

    .line 258
    int-to-short v0, v15

    move/from16 v43, v0

    aput-short v43, v8, v15

    .line 257
    add-int/lit8 v15, v15, 0x1

    goto :goto_c

    .line 253
    .end local v8    # "finalIndices":[S
    .end local v15    # "i":I
    .end local v30    # "numIndices":I
    .restart local v16    # "i":I
    :cond_1d
    mul-int/lit8 v30, v28, 0x3

    goto :goto_b

    .line 262
    .end local v16    # "i":I
    .restart local v8    # "finalIndices":[S
    .restart local v30    # "numIndices":I
    :cond_1e
    new-instance v4, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v4}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    .line 263
    .local v4, "attributes":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/graphics/VertexAttribute;>;"
    new-instance v43, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const/16 v44, 0x1

    const/16 v45, 0x3

    const-string v46, "a_position"

    invoke-direct/range {v43 .. v46}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    move-object/from16 v0, v43

    invoke-virtual {v4, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 264
    if-eqz v13, :cond_1f

    new-instance v43, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const/16 v44, 0x8

    const/16 v45, 0x3

    const-string v46, "a_normal"

    invoke-direct/range {v43 .. v46}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    move-object/from16 v0, v43

    invoke-virtual {v4, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 265
    :cond_1f
    if-eqz v14, :cond_20

    new-instance v43, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const/16 v44, 0x10

    const/16 v45, 0x2

    const-string v46, "a_texCoord0"

    invoke-direct/range {v43 .. v46}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    move-object/from16 v0, v43

    invoke-virtual {v4, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 267
    :cond_20
    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "node"

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    add-int/lit8 v17, v17, 0x1

    move-object/from16 v0, v43

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 268
    .local v24, "nodeId":Ljava/lang/String;
    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "mesh"

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 269
    .local v20, "meshId":Ljava/lang/String;
    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "part"

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    .line 270
    .local v32, "partId":Ljava/lang/String;
    new-instance v23, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNode;

    invoke-direct/range {v23 .. v23}, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNode;-><init>()V

    .line 271
    .local v23, "node":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNode;
    move-object/from16 v0, v24

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNode;->id:Ljava/lang/String;

    .line 272
    move-object/from16 v0, v20

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNode;->meshId:Ljava/lang/String;

    .line 273
    new-instance v43, Lcom/badlogic/gdx/math/Vector3;

    const/high16 v44, 0x3f800000    # 1.0f

    const/high16 v45, 0x3f800000    # 1.0f

    const/high16 v46, 0x3f800000    # 1.0f

    invoke-direct/range {v43 .. v46}, Lcom/badlogic/gdx/math/Vector3;-><init>(FFF)V

    move-object/from16 v0, v43

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNode;->scale:Lcom/badlogic/gdx/math/Vector3;

    .line 274
    new-instance v43, Lcom/badlogic/gdx/math/Vector3;

    invoke-direct/range {v43 .. v43}, Lcom/badlogic/gdx/math/Vector3;-><init>()V

    move-object/from16 v0, v43

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNode;->translation:Lcom/badlogic/gdx/math/Vector3;

    .line 275
    new-instance v43, Lcom/badlogic/gdx/math/Quaternion;

    invoke-direct/range {v43 .. v43}, Lcom/badlogic/gdx/math/Quaternion;-><init>()V

    move-object/from16 v0, v43

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNode;->rotation:Lcom/badlogic/gdx/math/Quaternion;

    .line 276
    new-instance v34, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodePart;

    invoke-direct/range {v34 .. v34}, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodePart;-><init>()V

    .line 277
    .local v34, "pm":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodePart;
    move-object/from16 v0, v32

    move-object/from16 v1, v34

    iput-object v0, v1, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodePart;->meshPartId:Ljava/lang/String;

    .line 278
    iget-object v0, v12, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader$Group;->materialName:Ljava/lang/String;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move-object/from16 v1, v34

    iput-object v0, v1, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodePart;->materialId:Ljava/lang/String;

    .line 279
    const/16 v43, 0x1

    move/from16 v0, v43

    new-array v0, v0, [Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodePart;

    move-object/from16 v43, v0

    const/16 v44, 0x0

    aput-object v34, v43, v44

    move-object/from16 v0, v43

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNode;->parts:[Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodePart;

    .line 280
    new-instance v31, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMeshPart;

    invoke-direct/range {v31 .. v31}, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMeshPart;-><init>()V

    .line 281
    .local v31, "part":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMeshPart;
    move-object/from16 v0, v32

    move-object/from16 v1, v31

    iput-object v0, v1, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMeshPart;->id:Ljava/lang/String;

    .line 282
    move-object/from16 v0, v31

    iput-object v8, v0, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMeshPart;->indices:[S

    .line 283
    const/16 v43, 0x4

    move/from16 v0, v43

    move-object/from16 v1, v31

    iput v0, v1, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMeshPart;->primitiveType:I

    .line 284
    new-instance v19, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMesh;

    invoke-direct/range {v19 .. v19}, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMesh;-><init>()V

    .line 285
    .local v19, "mesh":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMesh;
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMesh;->id:Ljava/lang/String;

    .line 286
    const-class v43, Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-object/from16 v0, v43

    invoke-virtual {v4, v0}, Lcom/badlogic/gdx/utils/Array;->toArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v43

    check-cast v43, [Lcom/badlogic/gdx/graphics/VertexAttribute;

    move-object/from16 v0, v43

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMesh;->attributes:[Lcom/badlogic/gdx/graphics/VertexAttribute;

    .line 287
    move-object/from16 v0, v19

    iput-object v9, v0, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMesh;->vertices:[F

    .line 288
    const/16 v43, 0x1

    move/from16 v0, v43

    new-array v0, v0, [Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMeshPart;

    move-object/from16 v43, v0

    const/16 v44, 0x0

    aput-object v31, v43, v44

    move-object/from16 v0, v43

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMesh;->parts:[Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMeshPart;

    .line 289
    iget-object v0, v5, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelData;->nodes:Lcom/badlogic/gdx/utils/Array;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 290
    iget-object v0, v5, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelData;->meshes:Lcom/badlogic/gdx/utils/Array;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 291
    iget-object v0, v12, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader$Group;->materialName:Ljava/lang/String;

    move-object/from16 v43, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/graphics/g3d/loader/MtlLoader;->getMaterial(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;

    move-result-object v21

    .line 292
    .local v21, "mm":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;
    iget-object v0, v5, Lcom/badlogic/gdx/graphics/g3d/model/data/ModelData;->materials:Lcom/badlogic/gdx/utils/Array;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 225
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_5

    .line 302
    .end local v4    # "attributes":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/graphics/VertexAttribute;>;"
    .end local v7    # "faces":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/Integer;>;"
    .end local v8    # "finalIndices":[S
    .end local v9    # "finalVerts":[F
    .end local v12    # "group":Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader$Group;
    .end local v13    # "hasNorms":Z
    .end local v14    # "hasUVs":Z
    .end local v19    # "mesh":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMesh;
    .end local v20    # "meshId":Ljava/lang/String;
    .end local v21    # "mm":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMaterial;
    .end local v23    # "node":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNode;
    .end local v24    # "nodeId":Ljava/lang/String;
    .end local v27    # "numElements":I
    .end local v28    # "numFaces":I
    .end local v30    # "numIndices":I
    .end local v31    # "part":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelMeshPart;
    .end local v32    # "partId":Ljava/lang/String;
    .end local v34    # "pm":Lcom/badlogic/gdx/graphics/g3d/model/data/ModelNodePart;
    .end local v42    # "vi":I
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;->verts:Lcom/badlogic/gdx/utils/FloatArray;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget v0, v0, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    move/from16 v43, v0

    if-lez v43, :cond_22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;->verts:Lcom/badlogic/gdx/utils/FloatArray;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Lcom/badlogic/gdx/utils/FloatArray;->clear()V

    .line 303
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;->norms:Lcom/badlogic/gdx/utils/FloatArray;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget v0, v0, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    move/from16 v43, v0

    if-lez v43, :cond_23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;->norms:Lcom/badlogic/gdx/utils/FloatArray;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Lcom/badlogic/gdx/utils/FloatArray;->clear()V

    .line 304
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;->uvs:Lcom/badlogic/gdx/utils/FloatArray;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget v0, v0, Lcom/badlogic/gdx/utils/FloatArray;->size:I

    move/from16 v43, v0

    if-lez v43, :cond_24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;->uvs:Lcom/badlogic/gdx/utils/FloatArray;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Lcom/badlogic/gdx/utils/FloatArray;->clear()V

    .line 305
    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;->groups:Lcom/badlogic/gdx/utils/Array;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    move/from16 v43, v0

    if-lez v43, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;->groups:Lcom/badlogic/gdx/utils/Array;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Lcom/badlogic/gdx/utils/Array;->clear()V

    goto/16 :goto_2

    .restart local v7    # "faces":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Ljava/lang/Integer;>;"
    .restart local v9    # "finalVerts":[F
    .restart local v12    # "group":Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader$Group;
    .restart local v13    # "hasNorms":Z
    .restart local v14    # "hasUVs":Z
    .restart local v16    # "i":I
    .restart local v27    # "numElements":I
    .restart local v28    # "numFaces":I
    .restart local v39    # "vertIndex":I
    .restart local v42    # "vi":I
    :cond_25
    move/from16 v41, v42

    .end local v42    # "vi":I
    .restart local v41    # "vi":I
    move/from16 v15, v16

    .end local v16    # "i":I
    .restart local v15    # "i":I
    goto/16 :goto_a

    :cond_26
    move/from16 v42, v41

    .end local v41    # "vi":I
    .restart local v42    # "vi":I
    move/from16 v16, v15

    .end local v15    # "i":I
    .restart local v16    # "i":I
    goto/16 :goto_9
.end method

.method public loadObj(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/graphics/g3d/Model;
    .locals 1
    .param p1, "file"    # Lcom/badlogic/gdx/files/FileHandle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 100
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;->loadModel(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/graphics/g3d/Model;

    move-result-object v0

    return-object v0
.end method

.method public loadObj(Lcom/badlogic/gdx/files/FileHandle;Z)Lcom/badlogic/gdx/graphics/g3d/Model;
    .locals 1
    .param p1, "file"    # Lcom/badlogic/gdx/files/FileHandle;
    .param p2, "flipV"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 111
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/loader/ObjLoader;->loadModel(Lcom/badlogic/gdx/files/FileHandle;Z)Lcom/badlogic/gdx/graphics/g3d/Model;

    move-result-object v0

    return-object v0
.end method
