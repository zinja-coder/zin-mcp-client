.class public Lcom/badlogic/gdx/utils/I18NBundle;
.super Ljava/lang/Object;
.source "I18NBundle.java"


# static fields
.field private static final DEFAULT_ENCODING:Ljava/lang/String; = "UTF-8"

.field private static final ROOT_LOCALE:Ljava/util/Locale;

.field private static exceptionOnMissingKey:Z

.field private static simpleFormatter:Z


# instance fields
.field private formatter:Lcom/badlogic/gdx/utils/TextFormatter;

.field private locale:Ljava/util/Locale;

.field private parent:Lcom/badlogic/gdx/utils/I18NBundle;

.field private properties:Lcom/badlogic/gdx/utils/ObjectMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/ObjectMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 71
    new-instance v0, Ljava/util/Locale;

    const-string v1, ""

    const-string v2, ""

    const-string v3, ""

    invoke-direct {v0, v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/badlogic/gdx/utils/I18NBundle;->ROOT_LOCALE:Ljava/util/Locale;

    .line 73
    const/4 v0, 0x0

    sput-boolean v0, Lcom/badlogic/gdx/utils/I18NBundle;->simpleFormatter:Z

    .line 74
    const/4 v0, 0x1

    sput-boolean v0, Lcom/badlogic/gdx/utils/I18NBundle;->exceptionOnMissingKey:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkFileExistence(Lcom/badlogic/gdx/files/FileHandle;)Z
    .locals 2
    .param p0, "fh"    # Lcom/badlogic/gdx/files/FileHandle;

    .prologue
    .line 347
    :try_start_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/files/FileHandle;->read()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 348
    const/4 v1, 0x1

    .line 350
    :goto_0
    return v1

    .line 349
    :catch_0
    move-exception v0

    .line 350
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static createBundle(Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/utils/I18NBundle;
    .locals 2
    .param p0, "baseFileHandle"    # Lcom/badlogic/gdx/files/FileHandle;

    .prologue
    .line 121
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-static {p0, v0, v1}, Lcom/badlogic/gdx/utils/I18NBundle;->createBundleImpl(Lcom/badlogic/gdx/files/FileHandle;Ljava/util/Locale;Ljava/lang/String;)Lcom/badlogic/gdx/utils/I18NBundle;

    move-result-object v0

    return-object v0
.end method

.method public static createBundle(Lcom/badlogic/gdx/files/FileHandle;Ljava/lang/String;)Lcom/badlogic/gdx/utils/I18NBundle;
    .locals 1
    .param p0, "baseFileHandle"    # Lcom/badlogic/gdx/files/FileHandle;
    .param p1, "encoding"    # Ljava/lang/String;

    .prologue
    .line 144
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/badlogic/gdx/utils/I18NBundle;->createBundleImpl(Lcom/badlogic/gdx/files/FileHandle;Ljava/util/Locale;Ljava/lang/String;)Lcom/badlogic/gdx/utils/I18NBundle;

    move-result-object v0

    return-object v0
.end method

.method public static createBundle(Lcom/badlogic/gdx/files/FileHandle;Ljava/util/Locale;)Lcom/badlogic/gdx/utils/I18NBundle;
    .locals 1
    .param p0, "baseFileHandle"    # Lcom/badlogic/gdx/files/FileHandle;
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 133
    const-string v0, "UTF-8"

    invoke-static {p0, p1, v0}, Lcom/badlogic/gdx/utils/I18NBundle;->createBundleImpl(Lcom/badlogic/gdx/files/FileHandle;Ljava/util/Locale;Ljava/lang/String;)Lcom/badlogic/gdx/utils/I18NBundle;

    move-result-object v0

    return-object v0
.end method

.method public static createBundle(Lcom/badlogic/gdx/files/FileHandle;Ljava/util/Locale;Ljava/lang/String;)Lcom/badlogic/gdx/utils/I18NBundle;
    .locals 1
    .param p0, "baseFileHandle"    # Lcom/badlogic/gdx/files/FileHandle;
    .param p1, "locale"    # Ljava/util/Locale;
    .param p2, "encoding"    # Ljava/lang/String;

    .prologue
    .line 157
    invoke-static {p0, p1, p2}, Lcom/badlogic/gdx/utils/I18NBundle;->createBundleImpl(Lcom/badlogic/gdx/files/FileHandle;Ljava/util/Locale;Ljava/lang/String;)Lcom/badlogic/gdx/utils/I18NBundle;

    move-result-object v0

    return-object v0
.end method

.method private static createBundleImpl(Lcom/badlogic/gdx/files/FileHandle;Ljava/util/Locale;Ljava/lang/String;)Lcom/badlogic/gdx/utils/I18NBundle;
    .locals 10
    .param p0, "baseFileHandle"    # Lcom/badlogic/gdx/files/FileHandle;
    .param p1, "locale"    # Ljava/util/Locale;
    .param p2, "encoding"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 161
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v6, Ljava/lang/NullPointerException;

    invoke-direct {v6}, Ljava/lang/NullPointerException;-><init>()V

    throw v6

    .line 163
    :cond_1
    const/4 v1, 0x0

    .line 164
    .local v1, "bundle":Lcom/badlogic/gdx/utils/I18NBundle;
    const/4 v0, 0x0

    .line 165
    .local v0, "baseBundle":Lcom/badlogic/gdx/utils/I18NBundle;
    move-object v5, p1

    .line 168
    .local v5, "targetLocale":Ljava/util/Locale;
    :cond_2
    invoke-static {v5}, Lcom/badlogic/gdx/utils/I18NBundle;->getCandidateLocales(Ljava/util/Locale;)Ljava/util/List;

    move-result-object v3

    .line 171
    .local v3, "candidateLocales":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale;>;"
    invoke-static {p0, p2, v3, v8, v0}, Lcom/badlogic/gdx/utils/I18NBundle;->loadBundleChain(Lcom/badlogic/gdx/files/FileHandle;Ljava/lang/String;Ljava/util/List;ILcom/badlogic/gdx/utils/I18NBundle;)Lcom/badlogic/gdx/utils/I18NBundle;

    move-result-object v1

    .line 174
    if-eqz v1, :cond_6

    .line 175
    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/I18NBundle;->getLocale()Ljava/util/Locale;

    move-result-object v2

    .line 176
    .local v2, "bundleLocale":Ljava/util/Locale;
    sget-object v6, Lcom/badlogic/gdx/utils/I18NBundle;->ROOT_LOCALE:Ljava/util/Locale;

    invoke-virtual {v2, v6}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 178
    .local v4, "isBaseBundle":Z
    if-eqz v4, :cond_3

    invoke-virtual {v2, p1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 197
    .end local v2    # "bundleLocale":Ljava/util/Locale;
    .end local v4    # "isBaseBundle":Z
    :cond_3
    :goto_0
    if-nez v1, :cond_8

    .line 198
    if-nez v0, :cond_7

    .line 200
    new-instance v6, Ljava/util/MissingResourceException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Can\'t find bundle for base file handle "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/badlogic/gdx/files/FileHandle;->path()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", locale "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    invoke-direct {v6, v7, v8, v9}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v6

    .line 182
    .restart local v2    # "bundleLocale":Ljava/util/Locale;
    .restart local v4    # "isBaseBundle":Z
    :cond_4
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_5

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 186
    :cond_5
    if-eqz v4, :cond_6

    if-nez v0, :cond_6

    .line 188
    move-object v0, v1

    .line 193
    .end local v2    # "bundleLocale":Ljava/util/Locale;
    .end local v4    # "isBaseBundle":Z
    :cond_6
    invoke-static {v5}, Lcom/badlogic/gdx/utils/I18NBundle;->getFallbackLocale(Ljava/util/Locale;)Ljava/util/Locale;

    move-result-object v5

    .line 195
    if-nez v5, :cond_2

    goto :goto_0

    .line 204
    :cond_7
    move-object v1, v0

    .line 207
    :cond_8
    return-object v1
.end method

.method private static getCandidateLocales(Ljava/util/Locale;)Ljava/util/List;
    .locals 5
    .param p0, "locale"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Locale;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation

    .prologue
    .line 259
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 260
    .local v1, "language":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 261
    .local v0, "country":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v3

    .line 263
    .local v3, "variant":Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    const/4 v4, 0x4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 264
    .local v2, "locales":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale;>;"
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 265
    invoke-interface {v2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 267
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 268
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_3

    move-object v4, p0

    :goto_0
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 270
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    .line 271
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_4

    .end local p0    # "locale":Ljava/util/Locale;
    :goto_1
    invoke-interface {v2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 273
    :cond_2
    sget-object v4, Lcom/badlogic/gdx/utils/I18NBundle;->ROOT_LOCALE:Ljava/util/Locale;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 274
    return-object v2

    .line 268
    .restart local p0    # "locale":Ljava/util/Locale;
    :cond_3
    new-instance v4, Ljava/util/Locale;

    invoke-direct {v4, v1, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 271
    :cond_4
    new-instance p0, Ljava/util/Locale;

    .end local p0    # "locale":Ljava/util/Locale;
    invoke-direct {p0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static getExceptionOnMissingKey()Z
    .locals 1

    .prologue
    .line 104
    sget-boolean v0, Lcom/badlogic/gdx/utils/I18NBundle;->exceptionOnMissingKey:Z

    return v0
.end method

.method private static getFallbackLocale(Ljava/util/Locale;)Ljava/util/Locale;
    .locals 2
    .param p0, "locale"    # Ljava/util/Locale;

    .prologue
    .line 291
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 292
    .local v0, "defaultLocale":Ljava/util/Locale;
    invoke-virtual {p0, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .end local v0    # "defaultLocale":Ljava/util/Locale;
    :cond_0
    return-object v0
.end method

.method public static getSimpleFormatter()Z
    .locals 1

    .prologue
    .line 91
    sget-boolean v0, Lcom/badlogic/gdx/utils/I18NBundle;->simpleFormatter:Z

    return v0
.end method

.method private static loadBundle(Lcom/badlogic/gdx/files/FileHandle;Ljava/lang/String;Ljava/util/Locale;)Lcom/badlogic/gdx/utils/I18NBundle;
    .locals 6
    .param p0, "baseFileHandle"    # Lcom/badlogic/gdx/files/FileHandle;
    .param p1, "encoding"    # Ljava/lang/String;
    .param p2, "targetLocale"    # Ljava/util/Locale;

    .prologue
    .line 318
    const/4 v0, 0x0

    .line 319
    .local v0, "bundle":Lcom/badlogic/gdx/utils/I18NBundle;
    const/4 v4, 0x0

    .line 321
    .local v4, "reader":Ljava/io/Reader;
    :try_start_0
    invoke-static {p0, p2}, Lcom/badlogic/gdx/utils/I18NBundle;->toFileHandle(Lcom/badlogic/gdx/files/FileHandle;Ljava/util/Locale;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    .line 322
    .local v3, "fileHandle":Lcom/badlogic/gdx/files/FileHandle;
    invoke-static {v3}, Lcom/badlogic/gdx/utils/I18NBundle;->checkFileExistence(Lcom/badlogic/gdx/files/FileHandle;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 324
    new-instance v1, Lcom/badlogic/gdx/utils/I18NBundle;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/I18NBundle;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 327
    .end local v0    # "bundle":Lcom/badlogic/gdx/utils/I18NBundle;
    .local v1, "bundle":Lcom/badlogic/gdx/utils/I18NBundle;
    :try_start_1
    invoke-virtual {v3, p1}, Lcom/badlogic/gdx/files/FileHandle;->reader(Ljava/lang/String;)Ljava/io/Reader;

    move-result-object v4

    .line 328
    invoke-virtual {v1, v4}, Lcom/badlogic/gdx/utils/I18NBundle;->load(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v1

    .line 334
    .end local v1    # "bundle":Lcom/badlogic/gdx/utils/I18NBundle;
    .restart local v0    # "bundle":Lcom/badlogic/gdx/utils/I18NBundle;
    :cond_0
    invoke-static {v4}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 336
    if-eqz v0, :cond_1

    .line 337
    invoke-direct {v0, p2}, Lcom/badlogic/gdx/utils/I18NBundle;->setLocale(Ljava/util/Locale;)V

    .line 340
    :cond_1
    return-object v0

    .line 330
    .end local v3    # "fileHandle":Lcom/badlogic/gdx/files/FileHandle;
    :catch_0
    move-exception v2

    .line 331
    .local v2, "e":Ljava/io/IOException;
    :goto_0
    :try_start_2
    new-instance v5, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    invoke-direct {v5, v2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 334
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    :goto_1
    invoke-static {v4}, Lcom/badlogic/gdx/utils/StreamUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v5

    .end local v0    # "bundle":Lcom/badlogic/gdx/utils/I18NBundle;
    .restart local v1    # "bundle":Lcom/badlogic/gdx/utils/I18NBundle;
    .restart local v3    # "fileHandle":Lcom/badlogic/gdx/files/FileHandle;
    :catchall_1
    move-exception v5

    move-object v0, v1

    .end local v1    # "bundle":Lcom/badlogic/gdx/utils/I18NBundle;
    .restart local v0    # "bundle":Lcom/badlogic/gdx/utils/I18NBundle;
    goto :goto_1

    .line 330
    .end local v0    # "bundle":Lcom/badlogic/gdx/utils/I18NBundle;
    .restart local v1    # "bundle":Lcom/badlogic/gdx/utils/I18NBundle;
    :catch_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "bundle":Lcom/badlogic/gdx/utils/I18NBundle;
    .restart local v0    # "bundle":Lcom/badlogic/gdx/utils/I18NBundle;
    goto :goto_0
.end method

.method private static loadBundleChain(Lcom/badlogic/gdx/files/FileHandle;Ljava/lang/String;Ljava/util/List;ILcom/badlogic/gdx/utils/I18NBundle;)Lcom/badlogic/gdx/utils/I18NBundle;
    .locals 4
    .param p0, "baseFileHandle"    # Lcom/badlogic/gdx/files/FileHandle;
    .param p1, "encoding"    # Ljava/lang/String;
    .param p3, "candidateIndex"    # I
    .param p4, "baseBundle"    # Lcom/badlogic/gdx/utils/I18NBundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/files/FileHandle;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/util/Locale;",
            ">;I",
            "Lcom/badlogic/gdx/utils/I18NBundle;",
            ")",
            "Lcom/badlogic/gdx/utils/I18NBundle;"
        }
    .end annotation

    .prologue
    .line 297
    .local p2, "candidateLocales":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale;>;"
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Locale;

    .line 298
    .local v2, "targetLocale":Ljava/util/Locale;
    const/4 v1, 0x0

    .line 299
    .local v1, "parent":Lcom/badlogic/gdx/utils/I18NBundle;
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-eq p3, v3, :cond_1

    .line 301
    add-int/lit8 v3, p3, 0x1

    invoke-static {p0, p1, p2, v3, p4}, Lcom/badlogic/gdx/utils/I18NBundle;->loadBundleChain(Lcom/badlogic/gdx/files/FileHandle;Ljava/lang/String;Ljava/util/List;ILcom/badlogic/gdx/utils/I18NBundle;)Lcom/badlogic/gdx/utils/I18NBundle;

    move-result-object v1

    .line 307
    :cond_0
    invoke-static {p0, p1, v2}, Lcom/badlogic/gdx/utils/I18NBundle;->loadBundle(Lcom/badlogic/gdx/files/FileHandle;Ljava/lang/String;Ljava/util/Locale;)Lcom/badlogic/gdx/utils/I18NBundle;

    move-result-object v0

    .line 308
    .local v0, "bundle":Lcom/badlogic/gdx/utils/I18NBundle;
    if-eqz v0, :cond_2

    .line 309
    iput-object v1, v0, Lcom/badlogic/gdx/utils/I18NBundle;->parent:Lcom/badlogic/gdx/utils/I18NBundle;

    move-object p4, v0

    .line 313
    .end local v0    # "bundle":Lcom/badlogic/gdx/utils/I18NBundle;
    .end local p4    # "baseBundle":Lcom/badlogic/gdx/utils/I18NBundle;
    :goto_0
    return-object p4

    .line 302
    .restart local p4    # "baseBundle":Lcom/badlogic/gdx/utils/I18NBundle;
    :cond_1
    if-eqz p4, :cond_0

    sget-object v3, Lcom/badlogic/gdx/utils/I18NBundle;->ROOT_LOCALE:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .restart local v0    # "bundle":Lcom/badlogic/gdx/utils/I18NBundle;
    :cond_2
    move-object p4, v1

    .line 313
    goto :goto_0
.end method

.method public static setExceptionOnMissingKey(Z)V
    .locals 0
    .param p0, "enabled"    # Z

    .prologue
    .line 111
    sput-boolean p0, Lcom/badlogic/gdx/utils/I18NBundle;->exceptionOnMissingKey:Z

    .line 112
    return-void
.end method

.method private setLocale(Ljava/util/Locale;)V
    .locals 2
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 418
    iput-object p1, p0, Lcom/badlogic/gdx/utils/I18NBundle;->locale:Ljava/util/Locale;

    .line 419
    new-instance v1, Lcom/badlogic/gdx/utils/TextFormatter;

    sget-boolean v0, Lcom/badlogic/gdx/utils/I18NBundle;->simpleFormatter:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {v1, p1, v0}, Lcom/badlogic/gdx/utils/TextFormatter;-><init>(Ljava/util/Locale;Z)V

    iput-object v1, p0, Lcom/badlogic/gdx/utils/I18NBundle;->formatter:Lcom/badlogic/gdx/utils/TextFormatter;

    .line 420
    return-void

    .line 419
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setSimpleFormatter(Z)V
    .locals 0
    .param p0, "enabled"    # Z

    .prologue
    .line 97
    sput-boolean p0, Lcom/badlogic/gdx/utils/I18NBundle;->simpleFormatter:Z

    .line 98
    return-void
.end method

.method private static toFileHandle(Lcom/badlogic/gdx/files/FileHandle;Ljava/util/Locale;)Lcom/badlogic/gdx/files/FileHandle;
    .locals 9
    .param p0, "baseFileHandle"    # Lcom/badlogic/gdx/files/FileHandle;
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    const/16 v8, 0x5f

    .line 383
    new-instance v5, Lcom/badlogic/gdx/utils/StringBuilder;

    invoke-virtual {p0}, Lcom/badlogic/gdx/files/FileHandle;->name()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 384
    .local v5, "sb":Lcom/badlogic/gdx/utils/StringBuilder;
    sget-object v7, Lcom/badlogic/gdx/utils/I18NBundle;->ROOT_LOCALE:Ljava/util/Locale;

    invoke-virtual {p1, v7}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 385
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    .line 386
    .local v4, "language":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 387
    .local v0, "country":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v6

    .line 388
    .local v6, "variant":Ljava/lang/String;
    const-string v7, ""

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 389
    .local v2, "emptyLanguage":Z
    const-string v7, ""

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 390
    .local v1, "emptyCountry":Z
    const-string v7, ""

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 392
    .local v3, "emptyVariant":Z
    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    if-nez v3, :cond_1

    .line 393
    :cond_0
    invoke-virtual {v5, v8}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 394
    if-nez v3, :cond_2

    .line 395
    invoke-virtual {v5, v4}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 403
    .end local v0    # "country":Ljava/lang/String;
    .end local v1    # "emptyCountry":Z
    .end local v2    # "emptyLanguage":Z
    .end local v3    # "emptyVariant":Z
    .end local v4    # "language":Ljava/lang/String;
    .end local v6    # "variant":Ljava/lang/String;
    :cond_1
    :goto_0
    const-string v7, ".properties"

    invoke-virtual {v5, v7}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/badlogic/gdx/utils/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/badlogic/gdx/files/FileHandle;->sibling(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v7

    return-object v7

    .line 396
    .restart local v0    # "country":Ljava/lang/String;
    .restart local v1    # "emptyCountry":Z
    .restart local v2    # "emptyLanguage":Z
    .restart local v3    # "emptyVariant":Z
    .restart local v4    # "language":Ljava/lang/String;
    .restart local v6    # "variant":Ljava/lang/String;
    :cond_2
    if-nez v1, :cond_3

    .line 397
    invoke-virtual {v5, v4}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    goto :goto_0

    .line 399
    :cond_3
    invoke-virtual {v5, v4}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    goto :goto_0
.end method


# virtual methods
.method public varargs format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 453
    iget-object v0, p0, Lcom/badlogic/gdx/utils/I18NBundle;->formatter:Lcom/badlogic/gdx/utils/TextFormatter;

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/badlogic/gdx/utils/TextFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final get(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 431
    iget-object v1, p0, Lcom/badlogic/gdx/utils/I18NBundle;->properties:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 432
    .local v0, "result":Ljava/lang/String;
    if-nez v0, :cond_2

    .line 433
    iget-object v1, p0, Lcom/badlogic/gdx/utils/I18NBundle;->parent:Lcom/badlogic/gdx/utils/I18NBundle;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/badlogic/gdx/utils/I18NBundle;->parent:Lcom/badlogic/gdx/utils/I18NBundle;

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/utils/I18NBundle;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 434
    :cond_0
    if-nez v0, :cond_2

    .line 435
    sget-boolean v1, Lcom/badlogic/gdx/utils/I18NBundle;->exceptionOnMissingKey:Z

    if-eqz v1, :cond_1

    .line 436
    new-instance v1, Ljava/util/MissingResourceException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t find bundle key "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, p1}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 438
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "???"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "???"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 441
    :goto_0
    return-object v1

    :cond_2
    move-object v1, v0

    goto :goto_0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    .prologue
    .line 411
    iget-object v0, p0, Lcom/badlogic/gdx/utils/I18NBundle;->locale:Ljava/util/Locale;

    return-object v0
.end method

.method protected load(Ljava/io/Reader;)V
    .locals 1
    .param p1, "reader"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 361
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/I18NBundle;->properties:Lcom/badlogic/gdx/utils/ObjectMap;

    .line 362
    iget-object v0, p0, Lcom/badlogic/gdx/utils/I18NBundle;->properties:Lcom/badlogic/gdx/utils/ObjectMap;

    invoke-static {v0, p1}, Lcom/badlogic/gdx/utils/PropertiesUtils;->load(Lcom/badlogic/gdx/utils/ObjectMap;Ljava/io/Reader;)V

    .line 363
    return-void
.end method
