﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.42000
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace HitmanPatcher {
    using System;
    
    
    /// <summary>
    ///   A strongly-typed resource class, for looking up localized strings, etc.
    /// </summary>
    // This class was auto-generated by the StronglyTypedResourceBuilder
    // class via a tool like ResGen or Visual Studio.
    // To add or remove a member, edit your .ResX file then rerun ResGen
    // with the /str option, or rebuild your VS project.
    [global::System.CodeDom.Compiler.GeneratedCodeAttribute("System.Resources.Tools.StronglyTypedResourceBuilder", "17.0.0.0")]
    [global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
    [global::System.Runtime.CompilerServices.CompilerGeneratedAttribute()]
    internal class CliLocale {
        
        private static global::System.Resources.ResourceManager resourceMan;
        
        private static global::System.Globalization.CultureInfo resourceCulture;
        
        [global::System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1811:AvoidUncalledPrivateCode")]
        internal CliLocale() {
        }
        
        /// <summary>
        ///   Returns the cached ResourceManager instance used by this class.
        /// </summary>
        [global::System.ComponentModel.EditorBrowsableAttribute(global::System.ComponentModel.EditorBrowsableState.Advanced)]
        internal static global::System.Resources.ResourceManager ResourceManager {
            get {
                if (object.ReferenceEquals(resourceMan, null)) {
                    global::System.Resources.ResourceManager temp = new global::System.Resources.ResourceManager("HitmanPatcher.CliLocale", typeof(CliLocale).Assembly);
                    resourceMan = temp;
                }
                return resourceMan;
            }
        }
        
        /// <summary>
        ///   Overrides the current thread's CurrentUICulture property for all
        ///   resource lookups using this strongly typed resource class.
        /// </summary>
        [global::System.ComponentModel.EditorBrowsableAttribute(global::System.ComponentModel.EditorBrowsableState.Advanced)]
        internal static global::System.Globalization.CultureInfo Culture {
            get {
                return resourceCulture;
            }
            set {
                resourceCulture = value;
            }
        }
        
        /// <summary>
        ///   Looks up a localized string similar to The domain for the game to connect to..
        /// </summary>
        internal static string DomainDescription {
            get {
                return ResourceManager.GetString("DomainDescription", resourceCulture);
            }
        }
        
        /// <summary>
        ///   Looks up a localized string similar to ====== Peacock Patcher - Headless mode ======.
        /// </summary>
        internal static string HeadlessBanner {
            get {
                return ResourceManager.GetString("HeadlessBanner", resourceCulture);
            }
        }
        
        /// <summary>
        ///   Looks up a localized string similar to If the patcher should be run without the GUI..
        /// </summary>
        internal static string HeadlessDescription {
            get {
                return ResourceManager.GetString("HeadlessDescription", resourceCulture);
            }
        }
        
        /// <summary>
        ///   Looks up a localized string similar to Peacock Patcher CLI - Copyright (c) 2020-2024 grappigegovert &amp; The Peacock Project.
        /// </summary>
        internal static string HelpHeader {
            get {
                return ResourceManager.GetString("HelpHeader", resourceCulture);
            }
        }
        
        /// <summary>
        ///   Looks up a localized string similar to If the game should not force the user offline if the dynamic resources are missing or invalid..
        /// </summary>
        internal static string OptionalDynResDescription {
            get {
                return ResourceManager.GetString("OptionalDynResDescription", resourceCulture);
            }
        }
        
        /// <summary>
        ///   Looks up a localized string similar to If the game should connect using &quot;http://&quot; instead of the default, &quot;https://&quot;..
        /// </summary>
        internal static string UseHttpDescription {
            get {
                return ResourceManager.GetString("UseHttpDescription", resourceCulture);
            }
        }
    }
}
