.class public Lcom/badlogic/gdx/utils/GdxBuild;
.super Ljava/lang/Object;
.source "GdxBuild.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 19
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 30
    const-string v4, "jni"

    .line 31
    .local v4, "JNI_DIR":Ljava/lang/String;
    const-string v7, "libs"

    .line 34
    .local v7, "LIBS_DIR":Ljava/lang/String;
    new-instance v1, Lcom/badlogic/gdx/jnigen/NativeCodeGenerator;

    invoke-direct {v1}, Lcom/badlogic/gdx/jnigen/NativeCodeGenerator;-><init>()V

    const-string v2, "src"

    const-string v3, "bin"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v18, "**/*"

    aput-object v18, v5, v6

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/badlogic/gdx/jnigen/NativeCodeGenerator;->generate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 36
    const/4 v1, 0x2

    new-array v9, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android/**"

    aput-object v2, v9, v1

    const/4 v1, 0x1

    const-string v2, "iosgl/**"

    aput-object v2, v9, v1

    .line 40
    .local v9, "excludeCpp":[Ljava/lang/String;
    sget-object v1, Lcom/badlogic/gdx/jnigen/BuildTarget$TargetOs;->Windows:Lcom/badlogic/gdx/jnigen/BuildTarget$TargetOs;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/badlogic/gdx/jnigen/BuildTarget;->newDefaultTarget(Lcom/badlogic/gdx/jnigen/BuildTarget$TargetOs;Z)Lcom/badlogic/gdx/jnigen/BuildTarget;

    move-result-object v16

    .line 41
    .local v16, "win32home":Lcom/badlogic/gdx/jnigen/BuildTarget;
    const-string v1, ""

    move-object/from16 v0, v16

    iput-object v1, v0, Lcom/badlogic/gdx/jnigen/BuildTarget;->compilerPrefix:Ljava/lang/String;

    .line 42
    const-string v1, "build-windows32home.xml"

    move-object/from16 v0, v16

    iput-object v1, v0, Lcom/badlogic/gdx/jnigen/BuildTarget;->buildFileName:Ljava/lang/String;

    .line 43
    const/4 v1, 0x1

    move-object/from16 v0, v16

    iput-boolean v1, v0, Lcom/badlogic/gdx/jnigen/BuildTarget;->excludeFromMasterBuildFile:Z

    .line 44
    move-object/from16 v0, v16

    iput-object v9, v0, Lcom/badlogic/gdx/jnigen/BuildTarget;->cppExcludes:[Ljava/lang/String;

    .line 45
    sget-object v1, Lcom/badlogic/gdx/jnigen/BuildTarget$TargetOs;->Windows:Lcom/badlogic/gdx/jnigen/BuildTarget$TargetOs;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/badlogic/gdx/jnigen/BuildTarget;->newDefaultTarget(Lcom/badlogic/gdx/jnigen/BuildTarget$TargetOs;Z)Lcom/badlogic/gdx/jnigen/BuildTarget;

    move-result-object v15

    .line 46
    .local v15, "win32":Lcom/badlogic/gdx/jnigen/BuildTarget;
    iput-object v9, v15, Lcom/badlogic/gdx/jnigen/BuildTarget;->cppExcludes:[Ljava/lang/String;

    .line 47
    sget-object v1, Lcom/badlogic/gdx/jnigen/BuildTarget$TargetOs;->Windows:Lcom/badlogic/gdx/jnigen/BuildTarget$TargetOs;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/badlogic/gdx/jnigen/BuildTarget;->newDefaultTarget(Lcom/badlogic/gdx/jnigen/BuildTarget$TargetOs;Z)Lcom/badlogic/gdx/jnigen/BuildTarget;

    move-result-object v17

    .line 48
    .local v17, "win64":Lcom/badlogic/gdx/jnigen/BuildTarget;
    move-object/from16 v0, v17

    iput-object v9, v0, Lcom/badlogic/gdx/jnigen/BuildTarget;->cppExcludes:[Ljava/lang/String;

    .line 49
    sget-object v1, Lcom/badlogic/gdx/jnigen/BuildTarget$TargetOs;->Linux:Lcom/badlogic/gdx/jnigen/BuildTarget$TargetOs;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/badlogic/gdx/jnigen/BuildTarget;->newDefaultTarget(Lcom/badlogic/gdx/jnigen/BuildTarget$TargetOs;Z)Lcom/badlogic/gdx/jnigen/BuildTarget;

    move-result-object v11

    .line 50
    .local v11, "lin32":Lcom/badlogic/gdx/jnigen/BuildTarget;
    iput-object v9, v11, Lcom/badlogic/gdx/jnigen/BuildTarget;->cppExcludes:[Ljava/lang/String;

    .line 51
    sget-object v1, Lcom/badlogic/gdx/jnigen/BuildTarget$TargetOs;->Linux:Lcom/badlogic/gdx/jnigen/BuildTarget$TargetOs;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/badlogic/gdx/jnigen/BuildTarget;->newDefaultTarget(Lcom/badlogic/gdx/jnigen/BuildTarget$TargetOs;Z)Lcom/badlogic/gdx/jnigen/BuildTarget;

    move-result-object v12

    .line 52
    .local v12, "lin64":Lcom/badlogic/gdx/jnigen/BuildTarget;
    iput-object v9, v12, Lcom/badlogic/gdx/jnigen/BuildTarget;->cppExcludes:[Ljava/lang/String;

    .line 53
    sget-object v1, Lcom/badlogic/gdx/jnigen/BuildTarget$TargetOs;->Android:Lcom/badlogic/gdx/jnigen/BuildTarget$TargetOs;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/badlogic/gdx/jnigen/BuildTarget;->newDefaultTarget(Lcom/badlogic/gdx/jnigen/BuildTarget$TargetOs;Z)Lcom/badlogic/gdx/jnigen/BuildTarget;

    move-result-object v8

    .line 54
    .local v8, "android":Lcom/badlogic/gdx/jnigen/BuildTarget;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v8, Lcom/badlogic/gdx/jnigen/BuildTarget;->linkerFlags:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -lGLESv2 -llog"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Lcom/badlogic/gdx/jnigen/BuildTarget;->linkerFlags:Ljava/lang/String;

    .line 55
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "iosgl/**"

    aput-object v3, v1, v2

    iput-object v1, v8, Lcom/badlogic/gdx/jnigen/BuildTarget;->cppExcludes:[Ljava/lang/String;

    .line 56
    sget-object v1, Lcom/badlogic/gdx/jnigen/BuildTarget$TargetOs;->MacOsX:Lcom/badlogic/gdx/jnigen/BuildTarget$TargetOs;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/badlogic/gdx/jnigen/BuildTarget;->newDefaultTarget(Lcom/badlogic/gdx/jnigen/BuildTarget$TargetOs;Z)Lcom/badlogic/gdx/jnigen/BuildTarget;

    move-result-object v13

    .line 57
    .local v13, "mac":Lcom/badlogic/gdx/jnigen/BuildTarget;
    iput-object v9, v13, Lcom/badlogic/gdx/jnigen/BuildTarget;->cppExcludes:[Ljava/lang/String;

    .line 58
    sget-object v1, Lcom/badlogic/gdx/jnigen/BuildTarget$TargetOs;->MacOsX:Lcom/badlogic/gdx/jnigen/BuildTarget$TargetOs;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/badlogic/gdx/jnigen/BuildTarget;->newDefaultTarget(Lcom/badlogic/gdx/jnigen/BuildTarget$TargetOs;Z)Lcom/badlogic/gdx/jnigen/BuildTarget;

    move-result-object v14

    .line 59
    .local v14, "mac64":Lcom/badlogic/gdx/jnigen/BuildTarget;
    iput-object v9, v14, Lcom/badlogic/gdx/jnigen/BuildTarget;->cppExcludes:[Ljava/lang/String;

    .line 60
    sget-object v1, Lcom/badlogic/gdx/jnigen/BuildTarget$TargetOs;->IOS:Lcom/badlogic/gdx/jnigen/BuildTarget$TargetOs;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/badlogic/gdx/jnigen/BuildTarget;->newDefaultTarget(Lcom/badlogic/gdx/jnigen/BuildTarget$TargetOs;Z)Lcom/badlogic/gdx/jnigen/BuildTarget;

    move-result-object v10

    .line 61
    .local v10, "ios":Lcom/badlogic/gdx/jnigen/BuildTarget;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "android/**"

    aput-object v3, v1, v2

    iput-object v1, v10, Lcom/badlogic/gdx/jnigen/BuildTarget;->cppExcludes:[Ljava/lang/String;

    .line 62
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "iosgl"

    aput-object v3, v1, v2

    iput-object v1, v10, Lcom/badlogic/gdx/jnigen/BuildTarget;->headerDirs:[Ljava/lang/String;

    .line 63
    new-instance v1, Lcom/badlogic/gdx/jnigen/AntScriptGenerator;

    invoke-direct {v1}, Lcom/badlogic/gdx/jnigen/AntScriptGenerator;-><init>()V

    new-instance v2, Lcom/badlogic/gdx/jnigen/BuildConfig;

    const-string v3, "gdx"

    const-string v5, "../target/native"

    invoke-direct {v2, v3, v5, v7, v4}, Lcom/badlogic/gdx/jnigen/BuildConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x9

    new-array v3, v3, [Lcom/badlogic/gdx/jnigen/BuildTarget;

    const/4 v5, 0x0

    aput-object v13, v3, v5

    const/4 v5, 0x1

    aput-object v14, v3, v5

    const/4 v5, 0x2

    aput-object v16, v3, v5

    const/4 v5, 0x3

    aput-object v15, v3, v5

    const/4 v5, 0x4

    aput-object v17, v3, v5

    const/4 v5, 0x5

    aput-object v11, v3, v5

    const/4 v5, 0x6

    aput-object v12, v3, v5

    const/4 v5, 0x7

    aput-object v8, v3, v5

    const/16 v5, 0x8

    aput-object v10, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/badlogic/gdx/jnigen/AntScriptGenerator;->generate(Lcom/badlogic/gdx/jnigen/BuildConfig;[Lcom/badlogic/gdx/jnigen/BuildTarget;)V

    .line 69
    return-void
.end method
